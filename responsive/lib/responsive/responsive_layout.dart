import 'package:flutter/material.dart';
import 'package:responsive/responsive/desktop_scaffold.dart';
import 'package:responsive/responsive/mobile_scaffold.dart';
import 'package:responsive/responsive/tablet_scaffold.dart';
import 'package:responsive/utils/screen_utils.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  });

  final MobileScaffold mobileScaffold;
  final TabletScaffold tabletScaffold;
  final DesktopScaffold desktopScaffold;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final DeviceType deviceType = ScreenUtils.getDeviceType(size.width);

    if (deviceType == DeviceType.mobile) {
      return mobileScaffold;
    } else if (deviceType == DeviceType.tablet) {
      return tabletScaffold;
    }
    return desktopScaffold;
  }
}
