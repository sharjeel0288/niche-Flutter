import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_niche2/ahmed%20files/credits/model/credits_model.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_theme.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_util.dart';

class CustomCredits extends StatelessWidget {
  final CreditsModel _model;

  const CustomCredits({
    Key? key,
    required CreditsModel model,
  }) : _model = model;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: Color(0xFF57636C).withOpacity(0.2),
          width: 2,
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Make Your Own Package',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.cuttlefish,
                  color: Theme.of(context).primaryColor,
                  size: 24,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    controller: _model.textController,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: '10 credits',
                      hintStyle: TextStyle(
                        color: Color(0x7C57636C),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).dividerColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).errorColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).errorColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    keyboardType: TextInputType.number,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  ' /',
                  style: TextStyle(
                    color: Color(0xC257636C),
                    fontSize: 24,
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.attach_money_rounded,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 24,
                ),
                SizedBox(width: 8),
                Text(
                  '60',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
