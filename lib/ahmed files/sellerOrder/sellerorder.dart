import 'package:go_router/go_router.dart';
import 'package:login_niche2/ahmed%20files/sellerOrder/widgets/activeOrderCard.dart';
import 'package:login_niche2/ahmed%20files/sellerOrder/widgets/completedOrderCard.dart';
import 'package:login_niche2/ahmed%20files/sellerOrder/widgets/pendingOrderCard.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_drop_down.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_icon_button.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_model.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_theme.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_util.dart';
import 'package:login_niche2/utils/flutterflow/flutter_flow_widgets.dart';
import 'package:login_niche2/utils/flutterflow/form_field_controller.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SellerorderWidget extends StatefulWidget {
  const SellerorderWidget({Key? key}) : super(key: key);

  @override
  _SellerorderWidgetState createState() => _SellerorderWidgetState();
}

class _SellerorderWidgetState extends State<SellerorderWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Bookings',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
              fontFamily: 'DM Sans',
              color: FlutterFlowTheme.of(context).primaryText,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2,
          bottom: const TabBar(
            indicatorColor: Color(0xFF4F709C),
            indicatorPadding: EdgeInsets.only(bottom: 10, left: 10),
            indicatorWeight: 2,
            tabs: [
              Tab(
                child: Text(
                  "Active",
                  style: TextStyle(color: Color(0xFF6440FE)),
                ),
              ),
              Tab(
                child: Text(
                  "Pending",
                  style: TextStyle(color: Color(0xFF6440FE)),
                ),
              ),
              Tab(
                child: Text(
                  "Completed",
                  style: TextStyle(color: Color(0xFF6440FE)),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          top: true,
          child: TabBarView(
            children: [
              ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return ActiveOrderCard(
                    imageUrl: 'https://images.unsplash.com/photo-1579009417163-f160a344bb79?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1954&q=80',
                    orderName: 'Haircut',
                    orderedBy: 'Hello World',
                    orderedFor: DateTime.now(),
                    location: '4652 Albert Street,\nToronto ON',
                  );
                },
              ),
              ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return PendingOrderCard(
                    imageUrl: 'https://images.unsplash.com/photo-1579009417163-f160a344bb79?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1954&q=80',
                    orderName: 'Haircut',
                    orderedBy: 'Hello World',
                    orderedFor: DateTime.now(), orderStatus: '',
                  );
                },
              ),
              ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return CompletedOrderCard(
                    imageUrl: 'https://images.unsplash.com/photo-1579009417163-f160a344bb79?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1954&q=80',
                    orderName: 'Haircut',
                    orderedBy: 'Hello World',
                    orderedFor: DateTime.now(),
                    completedOn: DateTime.now(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}






