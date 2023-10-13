import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_niche2/ahmed%20files/credits/model/credits_model.dart';
import 'package:login_niche2/ahmed%20files/credits/widgets/creditPackage.dart';
import 'package:login_niche2/ahmed%20files/credits/widgets/currentCredits.dart';
import 'package:login_niche2/ahmed%20files/credits/widgets/customCredits.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_theme.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_widgets.dart';

class CreditsWidget extends StatelessWidget {
  final CreditsModel _model = CreditsModel(); // Initialize the model

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        title: Text(
          'Credits',
          style: FlutterFlowTheme.of(context).headlineMedium.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CurrentCredits(credit:80),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Buy Credits',
                      style: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  CreditPackage(
                    credits: 100,
                    price: 60.0,
                    isSelected: true,
                    benefits: [
                      'Valid for a month (starting from buying date)',
                      '1.66 credit for 1 dollar',
                      'Benefit 3',
                      'Benefit 4',
                    ],
                  ),
                  CustomCredits(model: _model),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Proceed to Payment',
                options: FFButtonOptions(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  color: Color(0xFF213555),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.copyWith(
                        color: Colors.white,
                      ),
                  elevation: 3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
