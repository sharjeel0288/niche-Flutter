import 'package:flutter/material.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_theme.dart';

class CategoryWidget extends StatelessWidget {
  final String? value;
  final List<String> items;
  final Function(String?) onChanged;
  final String labelText;
  final String hintText;
  final bool isDisabled;

  CategoryWidget({
    required this.value,
    required this.items,
    required this.onChanged,
    required this.labelText,
    required this.hintText,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: DropdownButtonFormField<String>(
        value: value,
        onChanged: isDisabled ? null : onChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          labelText: labelText,
          labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
            color: FlutterFlowTheme.of(context).secondaryText,
          ),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).alternate,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).primaryColor,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 2,
            ),
          ),
        ),
        items: items.map<DropdownMenuItem<String>>(
          (String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                ),
              ),
            );
          },
        ).toList(),
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: FlutterFlowTheme.of(context).secondaryText,
          size: 24,
        ),
        elevation: 2,
        borderRadius: BorderRadius.circular(8),
        isDense: true,
      ),
    );
  }
}
