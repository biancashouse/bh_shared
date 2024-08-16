import 'package:bh_shared/bh_shared.dart';
import 'package:flutter/material.dart';

mixin GotitsMixin {
  static List<String> _features = [];

  Future<void> fillGotitCache({bool notUsingHydratedStorage = false}) async {
    String? gotitList = await base.localStorage_read('gotits');
    _features =
        gotitList?.substring(1, gotitList.length - 1).split(',').toList() ?? [];
    // debugPrint('fillGotitCache: ${_features.toString()}');
  }

  void gotit(String feature,
      {bool notUsingHydratedStorage = false}) {
    if (!_features.contains(feature)) {
      _features.add(feature);
      base.localStorage_write('gotits', _features.toString());
    }
  }

  bool alreadyGotit(String feature,
      {bool notUsingHydratedStorage = false}) {
    return _features.contains(feature);
  }

  void clearGotits({bool notUsingHydratedStorage = false})  {
    if (!notUsingHydratedStorage) {
      base.localStorage_delete('gotits');
    }
    _features.clear();
    // debugPrint("fca.clearGotits");
  }

  Widget gotitButton(
          {required String feature,
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
