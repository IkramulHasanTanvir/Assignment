import 'package:flutter/material.dart';
import 'package:responsive/responsive/desktop_scaffold.dart';
import 'package:responsive/responsive/mobile_scaffold.dart';
import 'package:responsive/responsive/responsive_layout.dart';
import 'package:responsive/responsive/tablet_scaffold.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: MobileScaffold(),
      tabletScaffold: TabletScaffold(),
      desktopScaffold: DesktopScaffold(),
    );
  }
}
