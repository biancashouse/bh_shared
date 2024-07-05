// ignore_for_file: constant_identifier_names

import 'package:bh_shared/bh_shared.dart';
import 'package:flutter/material.dart';

mixin RootContextUseful {

  static BuildContext? _rootContext;

  BuildContext get rootContext {
    if (_rootContext == null) {
      throw (Exception("NULL rootContext !"));
    } else {
      return _rootContext!;
    }
  }

  set rootContext(BuildContext? newContext) {
    _rootContext = newContext;
  }

  // must be called from a widget build
  void initWithContext(BuildContext context, {VoidCallback? f}) {
    if (_rootContext == null) {
      BaseGlobal().initDeviceInfoAndPlatform();
      f?.call();
    }
    _rootContext = context;
  }
}