// ignore_for_file: constant_identifier_names

import 'dart:developer' as developer;

import 'package:bh_shared/bh_shared.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

mixin MQUseful {

  double get scrW => scrSize.width;

  double get scrH => scrSize.height;

  Size get scrSize {
    // if (BaseGlobal().rootContext == null) {
    //   debugPrint("root context NULL ?");
    // }
    return MediaQuery.sizeOf(BaseGlobal().rootContext);
  }

  double get kbdH {
    if (/* _rootContext == null || */ (!isIOS && !isAndroid)) return 0.0;
    FlutterView view = View.of(BaseGlobal().rootContext);
    final viewInsets =
    EdgeInsets.fromViewPadding(view.viewInsets, view.devicePixelRatio);
    return viewInsets.bottom;
  }

  MediaQueryData get mqd => MediaQuery.of(BaseGlobal().rootContext);

  TextScaler get textScaler => mqd.textScaler;

  Orientation get orientation => mqd.orientation;

  bool get isPortrait => orientation == Orientation.portrait;

  bool get isLandscape => orientation == Orientation.landscape;

  double get shortestSide => mqd.size.shortestSide;

  double get longestSide => mqd.size.longestSide;

  bool get narrowWidth => mqd.size.shortestSide < 600 && isPortrait;

  bool get shortHeight => mqd.size.shortestSide < 600 && isLandscape;

  // The equivalent of the "smallestWidth" qualifier on Android.
  bool get usePhoneLayout => mqd.size.shortestSide < 600;

  bool get useTabletLayout => !kIsWeb && mqd.size.shortestSide >= 600;

  EdgeInsets get viewPadding => mqd.viewPadding;

  debug() {
    developer.log('queryData.size.width = $scrW');
    developer.log('queryData.size.height = $scrH');
    developer.log('queryData.orientation = ${orientation.name}');
  }

  bool get isDesktopSized {
    return !isIOS && !isAndroid && scrW > 1023;
  }

  bool get isWeb => kIsWeb;

  bool get isAndroid => UniversalPlatform.isAndroid;

  bool get isIOS => UniversalPlatform.isIOS;

  bool get isMac => UniversalPlatform.isMacOS;

  bool get isWindows => UniversalPlatform.isWindows;

  bool get isFuchsia => UniversalPlatform.isFuchsia;

  static const double LARGEST_PHONE_WIDTH = 400.0;
}
// ------------------------------------------------------------------------------------------