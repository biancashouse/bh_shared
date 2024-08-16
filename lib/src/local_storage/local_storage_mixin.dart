import 'package:bh_shared/bh_shared.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

mixin LocalStorageMixin {

  static bool initialised = false;

  Future<void> localStorage_init() async {
    try {
      HydratedBloc.storage;
      initialised = true;
      await base.fillGotitCache();
    } catch (e) {
      // init local storage access
      var dir = kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getTemporaryDirectory();
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: dir,
      );
      initialised = true;
      await base.fillGotitCache();
    }
  }

  dynamic localStorage_read(String name) {
    assert(initialised);
    return HydratedBloc.storage.read(name);
  }

  Future<void> localStorage_write(String name, dynamic value) async {
    assert(initialised);
    await HydratedBloc.storage.write(name, value);
  }

  void localStorage_clear() {
    assert(initialised);
    HydratedBloc.storage.clear();
  }

  void localStorage_delete(String name) {
    assert(initialised);
    HydratedBloc.storage.delete(name);
  }

}
