import UIKit
import Braintree

import Flutter
import GoogleMaps

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("AIzaSyBndgRhy0wz0PxVAHpv44pJu_zs2NvQzes")
    GeneratedPluginRegistrant.register(with: self)
    BTAppContextSwitcher.setReturnURLScheme("com.mycompany.vineyardcomplete.braintree")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
