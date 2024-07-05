// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';

mixin BaseUseful /* extends WidgetHelper */ {

  void afterNextBuildDo(VoidCallback fn,
      {List<ScrollController>? scrollControllers}) {
    Map<int, double> savedOffsets = {};
    if (scrollControllers != null && scrollControllers.isNotEmpty) {
      for (int i = 0; i < scrollControllers.length; i++) {
        ScrollController sc = scrollControllers[i];
        if (sc.positions.isNotEmpty) {
          savedOffsets[i] = sc.offset;
        }
      }
    }
    SchedulerBinding.instance.addPostFrameCallback(
      (_) {
        if (savedOffsets.isNotEmpty) {
          for (int i in savedOffsets.keys) {
            scrollControllers![i].jumpTo(savedOffsets[i]!);
            // scrollControllers![i].animateTo(savedOffsets[i]!, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
          }
        }
        fn.call();
      },
    );
  }

  Future afterMsDelayDo(int millis, VoidCallback fn) async =>
      Future.delayed(Duration(milliseconds: millis), () {
        fn.call();
      });

  // formattedDate(int ms) => DateFormat.yMMMd().format(DateTime.fromMillisecondsSinceEpoch(ms));
  formattedDate(int ms) =>
      DateFormat('H:mm, d.MMM').format(DateTime.fromMillisecondsSinceEpoch(ms));

  String removeNonNumeric(s) => s.replaceAll(RegExp(r"\D"), "");
}

//------------------------------------------------------------------------------------------

extension ExtendedOffset on Offset {
  String toFlooredString() {
    return '(${dx.floor()}, ${dy.floor()})';
  }
}

const Duration ms300 = Duration(milliseconds: 300);
const Duration ms500 = Duration(milliseconds: 500);
const Duration immediate = Duration(milliseconds: 0);
