import 'package:bh_shared/bh_shared.dart';
import 'package:flutter/material.dart';

mixin GotitsMixin {

  Future<void> gotit(String feature,
      {bool notUsingHydratedStorage = false}) async {
    List<dynamic> gotits = base.hiveBox.get('gotits') ?? [];
    if (!gotits.contains(feature)) {
      gotits.add(feature);
      base.hiveBox.put('gotits', gotits);
    }
  }

  bool alreadyGotit(String feature, {bool notUsingHydratedStorage = false}) =>
    (base.hiveBox.get('gotits') ?? []).contains(feature);

  // List<String> allGotits() {
  //   List<String> gotits = base.hiveBox.get('gotits') ?? [];
  //   return gotits;
  // }

  void clearGotits({bool notUsingHydratedStorage = false}) {
    base.hiveBox.put('gotits', []);
  }

  Widget gotitButton({required String feature,
    required double iconSize,
    bool notUsingHydratedStorage = false}) =>
      IconButton(
        onPressed: () {
          gotit(feature, notUsingHydratedStorage: notUsingHydratedStorage);
        },
        icon: const Icon(Icons.thumb_up),
        iconSize: iconSize,
      );
}
