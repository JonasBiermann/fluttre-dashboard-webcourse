import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard_skillshare/widgets/app_bar_widget.dart';
import 'package:flutter_web_dashboard_skillshare/widgets/large_screen.dart';
import 'package:flutter_web_dashboard_skillshare/widgets/responsive_widget.dart';
import 'package:flutter_web_dashboard_skillshare/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: LargeScreen(),
      ),
    );
  }
}
