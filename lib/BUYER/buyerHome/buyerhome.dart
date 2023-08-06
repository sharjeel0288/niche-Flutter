// ignore_for_file: avoid_print, library_private_types_in_public_api

import 'package:login_niche2/BUYER/buyerHome/widgets/banner.dart';
import 'package:login_niche2/BUYER/buyerHome/widgets/drawer.dart';
import 'package:login_niche2/BUYER/buyerHome/widgets/mainServiceCard.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_icon_button.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_model.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'model/buyerhome_model.dart';
export 'model/buyerhome_model.dart';

class BuyerhomeWidget extends StatefulWidget {
  const BuyerhomeWidget({Key? key}) : super(key: key);

  @override
  _Buyer2homeWidgetState createState() => _Buyer2homeWidgetState();
}

class _Buyer2homeWidgetState extends State<BuyerhomeWidget> {
  late BuyerhomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuyerhomeModel());
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
        backgroundColor: Colors.white,
        endDrawer: const CustomEndDrawer(),
        appBar: AppBar(
          toolbarHeight: 60, // Set a smaller toolbar height
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Align(
            alignment: const AlignmentDirectional(-1, 0),
            child: Padding(
              padding: const EdgeInsets.only(left: 8), // Adjust the left padding
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/niche.png',
                  height: 40, // Reduce the height of the image
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          actions: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(right: 8), // Adjust the right padding
                  child: FlutterFlowIconButton(
                    borderRadius: 30,
                    buttonSize: 40,
                    icon: Icon(
                      Icons.notifications_none_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
                FlutterFlowIconButton(
                  borderRadius: 30,
                  buttonSize: 40,
                  icon: Icon(
                    Icons.list,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24,
                  ),
                  onPressed: () async {
                    scaffoldKey.currentState!.openEndDrawer();
                  },
                ),
              ],
            ),
          ],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height, // Set a finite height
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BannerWidget(model: _model),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.159,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        55, 0, 30, 0),
                                    child: FlutterFlowIconButton(
                                      borderColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: 20,
                                      borderWidth: 1,
                                      buttonSize: 50,
                                      fillColor: const Color(0xFFF5EFE7),
                                      icon: Icon(
                                        Icons.favorite_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        38, 0, 0, 0),
                                    child: Text(
                                      'Favourites',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        30, 0, 30, 0),
                                    child: FlutterFlowIconButton(
                                      borderColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: 20,
                                      borderWidth: 1,
                                      buttonSize: 50,
                                      fillColor: const Color(0xFFF5EFE7),
                                      icon: Icon(
                                        Icons.card_giftcard_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                  Text(
                                    'Gifts',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          30, 0, 55, 0),
                                      child: FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        borderRadius: 20,
                                        borderWidth: 1,
                                        buttonSize: 50,
                                        fillColor: const Color(0xFFF5EFE7),
                                        icon: Icon(
                                          Icons.sell,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 20, 0),
                                    child: Text(
                                      'Best Selling',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 30),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Beauty Services',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'DM Sans',
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(1, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'See all',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: 353,
                      height: MediaQuery.sizeOf(context).height * 4,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  MainServicesCard(),
                                  MainServicesCard(),
                                  MainServicesCard(),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  MainServicesCard(),
                                  MainServicesCard(),
                                  MainServicesCard(),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}









// class ExpandableContainer extends StatefulWidget {
//   final String mainCategory;
//   final List<String> subcategories;

//   ExpandableContainer({required this.mainCategory, required this.subcategories});

//   @override
//   _ExpandableContainerState createState() => _ExpandableContainerState();
// }

// class _ExpandableContainerState extends State<ExpandableContainer> {
//   bool isExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           isExpanded = !isExpanded;
//         });
//       },
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 150),
//         curve: Curves.easeInOut,
//         height: isExpanded ? 95 : 65, // Adjust the height based on expansion
//         child: MouseRegion(
//           opaque: false,
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
//             child: AnimatedContainer(
//               duration: Duration(milliseconds: 150),
//               curve: Curves.easeInOut,
//               width: double.infinity,
//               height: isExpanded ? 95 : 65, // Adjust the height based on expansion
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 10,
//                     color: Color(0x33000000),
//                     offset: Offset(0, 2),
//                     spreadRadius: 0,
//                   ),
//                 ],
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                       child: Text(
//                         widget.mainCategory,
//                         style: TextStyle(
//                           fontFamily: 'DM Sans',
//                           color: Color(0xFF323B60),
//                           fontSize: 18,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                     if (isExpanded) // Show subcategories only when expanded
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: widget.subcategories.map((subcategory) {
//                             return Text(subcategory);
//                           }).toList(),
//                         ),
//                       ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           onEnter: (event) {
//             setState(() => mouseRegionHovered2 = true);
//           },
//           onExit: (event) {
//             setState(() => mouseRegionHovered2 = false);
//           },
//         ),
//       ),
//     );
//   }
// }
