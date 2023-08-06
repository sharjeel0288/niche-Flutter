import 'package:login_niche2/BUYER/buyerCatrgories/model/SubCategorySevicesModel.dart';
import 'package:login_niche2/BUYER/buyerCatrgories/screen/ServiceDetailsScreen.dart';
import 'package:login_niche2/BUYER/buyerCatrgories/widgets/ServiceCard.dart';
import 'package:login_niche2/BUYER/buyerHome/widgets/drawer.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_drop_down.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_theme.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_util.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_widgets.dart';
import 'package:login_niche2/utils/flutterflow/form_field_controller.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
export '../model/SubCategorySevicesModel.dart';

class SubCategorySevicesScreen extends StatefulWidget {
  const SubCategorySevicesScreen({Key? key}) : super(key: key);

  @override
  _SubCategorySevicesScreenState createState() =>
      _SubCategorySevicesScreenState();
}

class _SubCategorySevicesScreenState extends State<SubCategorySevicesScreen> {
  late SubCategorySevicesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubCategorySevicesModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const CustomEndDrawer(),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        top: true,
        child: Container(
          width: 853,
          height: MediaQuery.sizeOf(context).height * 1,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.4,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.asset(
                        'assets/Imagehaircut.png',
                      ).image,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        // mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10, 0, 0, 0),
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              size: 24,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12, 8, 12, 14),
                              child: Container(
                                width: double.infinity,
                                height: 46,
                                decoration: BoxDecoration(
                                  color: const Color(0x1BF1F4F8),
                                  boxShadow: [
                                    const BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 8, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(4, 0, 4, 0),
                                        child: Icon(
                                          Icons.search_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          size: 24,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(4, 0, 0, 0),
                                          child: TextFormField(
                                            controller: _model.textController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.textController',
                                              const Duration(
                                                  milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText: 'Shop or Service name',
                                              hintStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'DM Sans',
                                                    color:
                                                        const Color(0xFF8F90A6),
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily),
                                                  ),
                                              enabledBorder:
                                                  const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder:
                                                  const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              errorBorder:
                                                  const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedErrorBorder:
                                                  const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'DM Sans',
                                                  color:
                                                      const Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                            validator: _model
                                                .textControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Builder(
                                builder: (BuildContext context) {
                                  return GestureDetector(
                                    onTap: () {
                                      print("sss");
                                      Scaffold.of(context).openEndDrawer();
                                    },
                                    child: const Icon(
                                      Icons.list,
                                      color: Colors.white,
                                    ),
                                  );
                                },
                              ))
                        ],
                      ),
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Container(
                                width: 213,
                                height: MediaQuery.sizeOf(context).height * 2.2,
                                decoration: const BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(-1, 1),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 10),
                                    child: AutoSizeText(
                                      'Haircut for men',
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            fontSize: 60,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                            lineHeight: 1,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 130, // Adjust the width as needed
                        child: FlutterFlowDropDown(
                          controller: _model.dropDownValueController ??=
                              FormFieldController<String>(null),
                          options: ['Default', 'High to Low', 'Low to High'],
                          onChanged: (val) =>
                              setState(() => _model.dropDownValue = val),
                          height: 40,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 13,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                                ),
                              ),
                          hintText: 'Price',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24,
                          ),
                          fillColor: const Color(0xFFF5EFE7),
                          elevation: 2,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2,
                          borderRadius: 30,
                          margin: const EdgeInsets.only(left: 10),
                          hidesUnderline: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Offers',
                          icon: const Icon(
                            Icons.local_offer_outlined,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            color: const Color(0xFFF5EFE7),
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            elevation: 0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Featured',
                          icon: const Icon(
                            Icons.featured_play_list_outlined,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            color: const Color(0xFFF5EFE7),
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            elevation: 0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Best Selling',
                          icon: const Icon(
                            Icons.arrow_upward_outlined,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            color: const Color(0xFFF5EFE7),
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            elevation: 0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  width: 509,
                  height: MediaQuery.sizeOf(context).height * 0.7,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  alignment: const AlignmentDirectional(0, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 5, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      7, 0, 0, 0),
                                  child: Text(
                                    '102 shops giving Haircut service',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: ServiceCard(
                            title: 'Woodland Salon',
                            description: 'Lorem epsom',
                            img:'assets/barber.avif',
                            price: '49',
                            ratings: '4.9',
                            time: '2.15',
                            ONTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ServiceDetailScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                      ].addToEnd(const SizedBox(height: 40)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
