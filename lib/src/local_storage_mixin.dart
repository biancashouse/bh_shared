import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

Box<dynamic>? _box;

mixin LocalStorageMixin {

  Future<void> initLocalStorage() async {
    await Hive.initFlutter();

    try {
      _box = await Hive.openBox('the-box');
    } catch (e) {
      debugPrint(e.toString());
      // try again
      // _box = await Hive.openBox('the-box');
    }
  }

  Box<dynamic>? get hiveBox => _box;
}
