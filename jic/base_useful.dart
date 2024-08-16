// // ignore_for_file: constant_identifier_names
//
// import 'package:bh_shared/bh_shared.dart';
//
// class BaseUseful extends Sys {
//
//   // BaseUseful._();
//   //
//   // static final instance = BaseUseful._();
//
//   // late MediaQueryData _mqd;
//
//
//
//   // static void refreshMQ(BuildContext ctx) => mqd = MediaQuery.of(ctx);
//
//   // must be called from a widget build
//   // void initWithContext(BuildContext context) {
//   //   if (_rootContext == null) {
//   //     _responsive = _Responsive().init();
//   //     afterNextBuildDo(() {
//   //       _createOffstageOverlay(context);
//   //     });
//   //   }
//   //   _rootContext = context;
//   // }
//
//   // static GlobalKey? _offstageGK;
//   // static WidgetBuilder _builder = (context) => const Icon(Icons.warning);
//   // static OverlayEntry? _oe;
//
//   // static WidgetBuilder get widgetBuilder => _builder;
//   // static set widgetBuilder(WidgetBuilder newBuilder) => _builder = newBuilder;
//
//   // update config with measured size
//   // static Size _measureOffstageWidget(
//   //   bool skipWidthConstraintWarning,
//   //   bool skipHeightConstraintWarning,
//   // ) {
//   //   if (_offstageGK != null) {
//   //     Rect? rect = _offstageGK!.globalPaintBounds(
//   //       skipWidthConstraintWarning: skipWidthConstraintWarning,
//   //       skipHeightConstraintWarning: skipHeightConstraintWarning,
//   //     ); //Measuring.findGlobalRect(_offstageGK!);
//   //     if (rect != null) {
//   //       debugPrint(
//   //           '_measureThenRenderCallout: width:${rect.width}, height:${rect.height}');
//   //       return rect.size;
//   //     }
//   //   }
//   //   return Size.zero;
//   // }
//
//   // void createOM(BuildContext context, String name) {
//   //   if (instance._oms.containsKey(name)) return;
//   //   instance._oms[name] = OverlayManager(Overlay.of(context));
//   //   if (instance._oms[name] == instance._oms["root"]) {
//   //     debugPrint('@!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!@');
//   //     debugPrint("Could not find Overlay $name using this context!");
//   //     debugPrint('@!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!@');
//   //   }
//   // }
//
//   // needs a context to get mediaquery, so gets set in the pqge builds [see getScreenSizeAndPossiblyNewOverlayManager()], but for now JIC, give default values
//
//
//   // static double get keyboardHeight => mqd.viewInsets.bottom;
//
//   // The warning: "Don't use 'BuildContext's across async gaps." occurs
//   // because after an async call, it's not guaranteed the current context will
//   // still exist.
//   // The workaround is to perform the async call inside a StatefulWidget and use
//   // didChangeDependencies() to set this globally available variable.
//   // BuildContext? _latestContext;
//   // when a context is needed in a static method, this root context can be used.
//   // It has to be set in a top level widget.
//
//   // static set latestContext(BuildContext? newContext) => instance._latestContext = newContext;
//   // static set rootContext(BuildContext? newContext) =>
//   //     instance._rootContext = newContext;
//   //
//   // static double get kbdH {
//   //   if (BaseUseful.rootContext == null || (!isIOS && !isAndroid)) return 0.0;
//   //   FlutterView view = View.of(rootContext!);
//   //   final viewInsets =
//   //       EdgeInsets.fromViewPadding(view.viewInsets, view.devicePixelRatio);
//   //   return viewInsets.bottom;
//   // }
//   //
//   // static MediaQueryData get mqd => MediaQuery.of(instance._rootContext!);
//   //
//   // static TextScaler get textScaler => mqd.textScaler;
//   //
//   // static Orientation get orientation => mqd.orientation;
//   //
//   // static bool get isPortrait => orientation == Orientation.portrait;
//   //
//   // static bool get isLandscape => orientation == Orientation.landscape;
//   //
//   // static double get shortestSide => mqd.size.shortestSide;
//   //
//   // static double get longestSide => mqd.size.longestSide;
//   //
//   // static bool get narrowWidth => mqd.size.shortestSide < 600 && isPortrait;
//   //
//   // static bool get shortHeight => mqd.size.shortestSide < 600 && isLandscape;
//   //
//   // // The equivalent of the "smallestWidth" qualifier on Android.
//   // static bool get usePhoneLayout => mqd.size.shortestSide < 600;
//   //
//   // static bool get useTabletLayout => !kIsWeb && mqd.size.shortestSide >= 600;
//   //
//   // static EdgeInsets get viewPadding => mqd.viewPadding;
//   //
//   // static debug() {
//   //   developer.log('queryData.size.width = $scrW');
//   //   developer.log('queryData.size.height = $scrH');
//   //   developer.log('queryData.orientation = ${orientation.name}');
//   // }
//
//   // void _saveScrollOffsets() {
//   //   if (editingPageState?.vScrollController.positions.isNotEmpty ?? false) {
//   //     _vScrollControllerOffset = editingPageState?.vScrollController.offset;
//   //   }
//   //   if (editingPageState?.hScrollController.positions.isNotEmpty ?? false) {
//   //     _hScrollControllerOffset = editingPageState?.hScrollController.offset;
//   //   }
//   //   if (editingPageState != null && editingPageState!.itemScrollController.hasClients) {
//   //     commentsAutoScrollControllerOffset = editingPageState!.itemScrollController.offset;
//   //   }
//   // }
//   //
//   // void restoreScrollOffsetsAfterNextBuild() {
//   //   _saveScrollOffsets();
//   //   Useful.afterNextBuildDo(() {
//   //     debugPrint('restoreScrollOffsetsAfterNextBuild');
//   //     if (_vScrollControllerOffset != null && (editingPageState?.vScrollController.hasClients ?? false)) {
//   //       editingPageState?.vScrollController.jumpTo(_vScrollControllerOffset!);
//   //     }
//   //     if (_hScrollControllerOffset != null && (editingPageState?.hScrollController.hasClients ?? false)) {
//   //       editingPageState?.hScrollController.jumpTo(_hScrollControllerOffset!);
//   //     }
//   //     if (commentsAutoScrollControllerOffset != null && (editingPageState?.itemScrollController.hasClients ?? false)) {
//   //       editingPageState?.itemScrollController.jumpTo(commentsAutoScrollControllerOffset!);
//   //     }
//   //   });
//   // }
//
//   // static void afterNextBuildPassGlobalKeyAndDo(GlobalKey gk, ValueChanged<GlobalKey> fn) => WidgetsBinding.instance.addPostFrameCallback(
//   //       (_) {
//   //         fn.call(gk);
//   //       },
//   //     );
//
//   // static void afterNextBuildDoAsync(VoidCallback fn) => WidgetsBinding.instance.addPostFrameCallback(
//   //       (_) async {
//   //         fn.call();
//   //       },
//   //     );
//
//   // static Future afterMsDelayDo(int millis, VoidCallback fn) async =>
//   //     Future.delayed(Duration(milliseconds: millis), () {
//   //       fn.call();
//   //     });
//
//   // static Future afterMsDelayDoAsync(int millis, VoidCallback fn) async => Future.delayed(Duration(milliseconds: millis), () async {
//   //       fn.call();
//   //     });
//
//   /// given a Rect, returns most appropriate alignment between target and callout within the wrapper
//   /// NOTICE does not depend on callout size
//
// compare appInfo versionAndBuild with this app's yaml values

// Future<bool> possiblyInformUserOfNewVersion() async {
//   String appsVersionAndBuildNum = await FC().versionAndBuild;
//   String? storedVersionAndBuild = FC().appInfo.versionAndBuildNum ?? '';
//   if (appsVersionAndBuildNum != storedVersionAndBuild) {
//     FC().appInfo.versionAndBuildNum = appsVersionAndBuildNum;
//     if (false) FC().modelRepo.saveAppInfo();
//     return true;
//   }
//   return false;
// }
//
// // static (double, double) ensureOnScreenOLD(Rect calloutRect) {
// //   double startingCalloutLeft = calloutRect.left;
// //   double startingCalloutTop = calloutRect.top;
// //   double resultLeft = startingCalloutLeft;
// //   double resultTop = startingCalloutTop;
// //   // adjust s.t entirely visible
// //   if (startingCalloutLeft + calloutRect.width > Useful.scrW) {
// //     resultLeft = Useful.scrW - calloutRect.width;
// //   }
// //   if (startingCalloutTop + calloutRect.height > (Useful.scrH - Useful.kbdH)) {
// //     resultTop = Useful.scrH - calloutRect.height - Useful.kbdH;
// //   }
// //   if (startingCalloutLeft < 0) resultLeft = 0;
// //   if (startingCalloutTop < 0) resultTop = 0;
// //
// //   return (resultLeft, resultTop);
// // }
// }
//
//
//
// // bool _alreadyGaveGlobalPosAndSizeWarning = false;
//
// // extension GlobalKeyExtension on GlobalKey {
// //   (Offset?, Size?) globalPosAndSize() {
// //     Rect? r = globalPaintBounds();
// //     return (r?.topLeft, r?.size);
// //   }
// //
// //   Rect? globalPaintBounds(
// //       {bool skipWidthConstraintWarning = true,
// //       bool skipHeightConstraintWarning = true}) {
// //     var cw = currentWidget;
// //     var cc = currentContext;
// //     final renderObject = cc?.findRenderObject();
// //     final translation = renderObject?.getTransformTo(null).getTranslation();
// //     Rect? paintBounds;
// //     try {
// //       paintBounds = renderObject?.paintBounds;
// //     } catch (e) {
// //       debugPrint('paintBounds = renderObject?.paintBounds - ${e.toString()}');
// //     }
// //     // possibly warn about the target having an infinite width
// //     if (!_alreadyGaveGlobalPosAndSizeWarning &&
// //         !skipWidthConstraintWarning &&
// //         !skipHeightConstraintWarning &&
// //         (paintBounds?.width == Useful.scrW ||
// //             paintBounds?.height == Useful.scrH)) {
// //       _alreadyGaveGlobalPosAndSizeWarning = true;
// //       Callout.showOverlay(
// //         boxContentF: (BuildContext context) {
// //           return Column(
// //             children: [
// //               Useful.coloredText('Warning - Target Size Constraint',
// //                   color: Colors.red),
// //               Text(
// //                 paintBounds?.width == Useful.scrW
// //                     ? "\nThe width of your callout target is the same as the window width.\n"
// //                         "This might indicate that your target has an unbounded width constraint.\n"
// //                         "This occurs, for example, when your target is a child of a ListView.\n\n"
// //                         "If this is intentional, add 'skipContraintWarning:true' as an arg\n\n"
// //                         "  to constructor Callout.wrapTarget\n\n"
// //                         "  or to calls to Callout.showOverlay()\n\n"
// //                         "Context: ${cc.toString()}"
// //                     : "\nThe hwight of your callout target is the same as the window hwight.\n"
// //                         "This might indicate that your target has an unbounded hwight constraint.\n"
// //                         "If this height is intentional, add 'skipContraintWarning:true' as an arg\n\n"
// //                         "  to constructor Callout.wrapTarget\n\n"
// //                         "  or to calls to Callout.showOverlay()\n\n"
// //                         "Context: ${cc.toString()}",
// //               ),
// //               TextButton(
// //                 onPressed: () {
// //                   Callout.removeParentCallout(context);
// //                 },
// //                 child: const Text('Close'),
// //               ),
// //             ],
// //           );
// //         },
// //         calloutConfig: CalloutConfig(
// //           feature: 'globalPaintBounds error',
// //           draggable: false,
// //           suppliedCalloutW: Useful.scrW * .7,
// //           suppliedCalloutH: 400,
// //           fillColor: Colors.white,
// //         ),
// //       );
// //     }
// //     if (translation != null && paintBounds != null) {
// //       final offset = Offset(translation.x, translation.y);
// //       return paintBounds.shift(offset);
// //     } else {
// //       return null;
// //     }
// //   }
// // }
//
// // class Measuring {
// //   Measuring._();
// //
// //   static Rect? findGlobalRect(GlobalKey key) {
// //     final RenderObject? renderObject = key.currentContext?.findRenderObject();
// //
// //     if (renderObject == null) {
// //       return null;
// //     }
// //
// //     if (renderObject is RenderBox) {
// //       final Offset globalOffset = renderObject.localToGlobal(Offset.zero);
// //
// //       Rect bounds = renderObject.paintBounds;
// //       bounds = bounds.translate(globalOffset.dx, globalOffset.dy);
// //       return bounds;
// //     } else {
// //       Rect bounds = renderObject.paintBounds;
// //       var translation = renderObject.getTransformTo(null).getTranslation();
// //       bounds = bounds.translate(translation.x, translation.y);
// //       return bounds;
// //     }
// //   }
// //
// // static Future<Rect> measureWidgetRect({
// //   required BuildContext context,
// //   required Widget widget,
// //   required BoxConstraints boxConstraints,
// // }) {
// //   final Completer<Rect> completer = Completer<Rect>();
// //   OverlayEntry? entry;
// //   entry = OverlayEntry(builder: (BuildContext ctx) {
// //     debugPrint(Theme.of(context).platform);
// //     return Material(
// //       child: MeasureWidget(
// //         boxConstraints: boxConstraints,
// //         measureRect: (Rect? rect) {
// //           entry?.remove();
// //           completer.complete(rect);
// //         },
// //         child: widget,
// //       ),
// //     );
// //   });
// //
// //   Overlay.of(context).insert(entry);
// //   return completer.future;
// // }
// // }
