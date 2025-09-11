import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'about_us_model.dart';
export 'about_us_model.dart';

class AboutUsWidget extends StatefulWidget {
  const AboutUsWidget({super.key});

  static String routeName = 'AboutUs';
  static String routePath = '/aboutUs';

  @override
  State<AboutUsWidget> createState() => _AboutUsWidgetState();
}

class _AboutUsWidgetState extends State<AboutUsWidget> {
  late AboutUsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutUsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            background: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/logo-primary.png',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: Image.asset(
                        'assets/images/half_flowers.png',
                      ).image,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Vineyard of Peace Ministries\n\n',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          TextSpan(
                            text:
                                'Vineyard of Peace Ministries is a dynamic, community-driven nonprofit organization dedicated to serving individuals and families through spiritual guidance, community outreach, and holistic support. Our mission is to cultivate a culture of peace, hope, and empowerment by providing spiritual nourishment, practical resources, and advocacy for underserved communities. With a strong focus on faith-based principles and social justice, Vineyard of Peace Ministries seeks to create a lasting impact on the lives of those we serve, empowering them to thrive and contribute positively to their communities.\n\n',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          TextSpan(
                            text: 'Our Approach\n\n',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          TextSpan(
                            text:
                                'At Vineyard of Peace Ministries, we believe in the transformative power of spirituality. Through prayer, pastoral counseling, and fellowship, we aim to provide individuals with the spiritual nourishment they need to overcome challenges, find inner peace, and build a strong foundation for personal growth. Our faith-based approach is inclusive and welcoming to all, regardless of background or belief system.\n\nCommunity Outreach: We are committed to reaching out to the community by providing a range of programs and services that address the diverse needs of individuals and families. Our outreach efforts include food drives, youth mentorship programs, educational workshops, and support for the elderly. By actively engaging with the community, we seek to build meaningful connections and create a network of support that fosters a sense of belonging and unity.\n\nVineyard of Peace Ministries takes a holistic approach to supporting individuals and families. We understand that people face multifaceted challenges that require a comprehensive approach to address. Through partnerships with local agencies and organizations, we offer access to resources such as housing assistance, job training, mental health services, and substance abuse support. Our goal is to help individuals achieve holistic well-being and overcome barriers to leading fulfilling lives.\n\nAddition to direct support, we are passionate about advocating for social justice and equality. Vineyard of Peace Ministries actively engages in community organizing, raising awareness about systemic issues, and advocating for policies that promote fairness and equity. We believe in standing up for the rights of those who are marginalized and oppressed, striving to create a more just and compassionate society for all.\n\n',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                          TextSpan(
                            text: 'Impact\n\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Vineyard of Peace Ministries has made a tangible impact on the lives of countless individuals and families. Our spiritual guidance has brought solace to those struggling with personal challenges, and our outreach programs have provided essential resources to those in need. Through our holistic support, we have helped individuals find stable housing, gain new skills, and overcome obstacles that once seemed insurmountable. Our advocacy efforts have sparked meaningful conversations and influenced positive changes in our communities. The stories of transformation and resilience within our community stand as a testament to the impact of Vineyard of Peace Ministries.\n\n',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: 'Leadership and Team\n\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Our leadership consists of dedicated individuals who bring a wealth of experience and a deep commitment to service. Each member of our team is driven by a passion for making a positive difference in the lives of others. Our collaborative and compassionate approach ensures that we work together seamlessly to achieve our shared goals. We are supported by a network of volunteers, donors, and community partners who share our vision and contribute to the success of our initiatives.\n\n',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: 'Partnerships\n\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Vineyard of Peace Ministries understands the importance of collaboration and partnerships in creating lasting change. We actively seek to partner with local businesses, educational institutions, government agencies, and other nonprofit organizations to maximize our impact. By joining forces with like-minded entities, we are able to broaden our reach and access additional resources to better serve our community.\n\n',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text:
                                'There are numerous ways for individuals and organizations to get involved with Vineyard of Peace Ministries. Whether through volunteering, making a donation, or participating in our programs, everyone can play a role in supporting our mission. We welcome individuals who are passionate about empowering others and creating positive change to join us in our efforts.\n\n',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text:
                                'Vineyard of Peace Ministries is committed to uplifting and empowering individuals and families through spiritual nourishment, community outreach, holistic support, and advocacy. With a steadfast dedication to fostering peace, hope, and empowerment, we work tirelessly to create a compassionate and just society where everyone has the opportunity to thrive. Join us in our mission to make a meaningful and lasting difference in the lives of those we serve.',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
