import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard_skillshare/widgets/responsive_widget.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 28),
                  child: Image.asset(
                    'icons/logo.png',
                    width: 15,
                  ),
                ),
              ],
            )
          : IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.blue,
              onPressed: () {
                key.currentState?.openDrawer();
              },
            ),
      elevation: 0,
      backgroundColor: Colors.white,
    );
