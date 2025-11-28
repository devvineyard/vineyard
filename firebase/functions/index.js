const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

const braintree = require("braintree");

// Test credentials
const kTestMerchantId = "brzcvpv2cst49tr3";
const kTestPublicKey = "tnrbrpxkncf7wv8x";
const kTestPrivateKey = "57d9d4c4843e9d89c3bb3c147a726599";

// Prod credentials
const kProdMerchantId = "";
const kProdPublicKey = "";
const kProdPrivateKey = "";

const merchantId = (isProd) => (isProd ? kProdMerchantId : kTestMerchantId);
const publicKey = (isProd) => (isProd ? kProdPublicKey : kTestPublicKey);
const privateKey = (isProd) => (isProd ? kProdPrivateKey : kTestPrivateKey);

/**
 *
 */
exports.processBraintreePayment = functions.https.onCall(
  async (data, context) => {
    if (!context.auth) {
      return "Unauthenticated calls are not allowed.";
    }
    const amount = data.amount;
    const paymentNonce = data.paymentNonce;
    const deviceData = data.deviceData;
    return await processTransaction(amount, paymentNonce, deviceData, true);
  },
);

/**
 *
 */
exports.processBraintreeTestPayment = functions.https.onCall(
  async (data, context) => {
    if (!context.auth) {
      return "Unauthenticated calls are not allowed.";
    }
    const amount = data.amount;
    const paymentNonce = data.paymentNonce;
    const deviceData = data.deviceData;
    return await processTransaction(amount, paymentNonce, deviceData, false);
  },
);

async function processTransaction(amount, paymentNonce, deviceData, isProd) {
  const gateway = new braintree.BraintreeGateway({
    environment: isProd
      ? braintree.Environment.Production
      : braintree.Environment.Sandbox,
    merchantId: merchantId(isProd),
    publicKey: publicKey(isProd),
    privateKey: privateKey(isProd),
  });
  return await gateway.transaction
    .sale({
      amount,
      paymentMethodNonce: paymentNonce,
      deviceData,
      options: {
        submitForSettlement: true,
      },
    })
    .then(
      (result) => {
        return result.success
          ? { transactionId: result.transaction.id }
          : { error: "Error processing payment." };
      },
      async (error) => {
        console.log(`Error: ${error}`);
        return { error: userFacingMessage(error) };
      },
    );
}

/**
 * Sanitize the error message for the user.
 */
function userFacingMessage(error) {
  return error.type
    ? error.message
    : "An error occurred, developers have been alerted";
}
exports.onUserDeleted = functions.auth.user().onDelete(async (user) => {
  let firestore = admin.firestore();
  let userRef = firestore.doc("users/" + user.uid);
  await firestore.collection("users").doc(user.uid).delete();
});
