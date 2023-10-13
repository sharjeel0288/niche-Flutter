import 'package:go_router/go_router.dart';
import 'package:login_niche2/ahmed%20files/buyerJobPost/model/jobPostPreviewCard.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_icon_button.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_theme.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'model/buyerjobpost_model.dart';
export 'model/buyerjobpost_model.dart';

class BuyerjobpostsWidget extends StatefulWidget {
  const BuyerjobpostsWidget({Key? key}) : super(key: key);

  @override
  _BuyerjobpostsWidgetState createState() => _BuyerjobpostsWidgetState();
}

class _BuyerjobpostsWidgetState extends State<BuyerjobpostsWidget> {
  late BuyerjobpostsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuyerjobpostsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: responsiveVisibility(
          context: context,
          desktop: false,
        )
            ? PreferredSize(
                preferredSize:
                    Size.fromHeight(MediaQuery.sizeOf(context).height * 0.07),
                child: AppBar(
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  automaticallyImplyLeading: false,
                  leading: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    borderWidth: 1,
                    buttonSize: 60,
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 34,
                    ),
                    onPressed: () async {
                      context.pop();
                    },
                  ),
                  title: Align(
                    alignment: AlignmentDirectional(-1.00, 1.00),
                    child: Text(
                      'Job Posts',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'DM Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineMediumFamily),
                              ),
                    ),
                  ),
                  actions: [],
                  centerTitle: true,
                  elevation: 2,
                ),
              )
            : null,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  JobPostPreviewCard(
                    title: 'Haircut',
                    description: 'A nice clean fade cut for a 10 year old',
                    date: DateTime(2022, 8, 7), // August 7, 2022
                    time: '12:00 AM',
                    amount: '4',
                    numberOfProposals: 3, // Example: You have 3 proposals
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.85, 0.90),
                child: FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: 20,
                  borderWidth: 0,
                  buttonSize: MediaQuery.sizeOf(context).width * 0.17,
                  fillColor: Color(0xFF4F709C),
                  icon: Icon(
                    Icons.add_rounded,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 50,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
