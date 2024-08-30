enum DeviceType { mobile, tablet, desktop }

class ScreenUtils {
  static double mobileMaxWidth = 640;
  static double tabletMaxWidth = 1008;
  static double desktopMinWidth = tabletMaxWidth;

  static DeviceType getDeviceType(double width) {
    if (width < ScreenUtils.mobileMaxWidth) {
      return DeviceType.mobile;
    } else if (width >= ScreenUtils.mobileMaxWidth &&
        width < ScreenUtils.desktopMinWidth) {
      return DeviceType.tablet;
    }
    return DeviceType.desktop;
  }
}
