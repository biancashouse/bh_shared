// import 'package:bh_shared/bh_shared.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:hydrated_bloc/hydrated_bloc.dart';
// import 'package:path_provider/path_provider.dart';
//
// class DummyClass with LocalStorageMixin {
//   // Implement any required abstract methods from the mixin
// }
//
// void main() {
//   group('local storage', () {
//
//     late DummyClass dummy;
//
//     setUp(() {
//       dummy = DummyClass();
//     });
//
//     test('init', () {
//       dummy.localStorage_init();
//       expect(isLocalStorageInitialised, true);
//     });
//
//     // test('value should be incremented', () {
//     //   final counter = Counter();
//     //   counter.increment();
//     //   expect(counter.value, 1);
//     // });
//
//     // Add more tests as needed
//   });
// }
//
// mixin LocalStorageMixin {
//
//   Future<void> localStorage_init() async {
//     try {
//       HydratedBloc.storage;
//       isLocalStorageInitialised = true;
//       debugPrint('localStorage initialised');
//       base.afterMsDelayDo(1000, (){
//         var lsGotits = localStorage_read('gotits');
//         gotits = lsGotits?.substring(1, lsGotits.length - 1).split(',').toList() ?? [];
//       });
//     } catch (e) {
//       // init local storage access
//       var dir = kIsWeb
//           ? HydratedStorage.webStorageDirectory
//           : await getTemporaryDirectory();
//       HydratedBloc.storage = await HydratedStorage.build(
//         storageDirectory: dir,
//       );
//       isLocalStorageInitialised = true;
//       debugPrint('localStorage initialised');
//       base.afterMsDelayDo(1000, (){
//         var lsGotits = localStorage_read('gotits');
//         gotits = lsGotits?.substring(1, lsGotits.length - 1).split(',').toList() ?? [];
//       });
//     }
//   }
//
//   dynamic localStorage_read(String name) {
//     debugPrint('localStorage read');
//     assert(isLocalStorageInitialised);
//     return HydratedBloc.storage.read(name);
//   }
//
//   Future<void> localStorage_write(String name, dynamic value) async {
//     debugPrint('localStorage write');
//     assert(isLocalStorageInitialised);
//     await HydratedBloc.storage.write(name, value);
//   }
//
//   void localStorage_clear() {
//     debugPrint('localStorage clear');
//     assert(isLocalStorageInitialised);
//     HydratedBloc.storage.clear();
//   }
//
//   void localStorage_delete(String name) {
//     debugPrint('localStorage delete');
//     assert(isLocalStorageInitialised);
//     HydratedBloc.storage.delete(name);
//   }
//
//   void gotit(String feature,
//       {bool notUsingHydratedStorage = false}) {
//     if (!gotits.contains(feature)) {
//       gotits.add(feature);
//       localStorage_write('gotits', gotits.toString());
//     }
//   }
//
//   bool alreadyGotit(String feature,
//       {bool notUsingHydratedStorage = false}) {
//     return gotits.contains(feature);
//   }
//
//   void clearGotits({bool notUsingHydratedStorage = false})  {
//     if (!notUsingHydratedStorage) {
//       localStorage_delete('gotits');
//     }
//     gotits.clear();
//   }
//
//   Widget gotitButton(
//       {required String feature,
//         required double iconSize,
//         bool notUsingHydratedStorage = false}) =>
//       IconButton(
//         onPressed: () {
//           gotit(feature, notUsingHydratedStorage: notUsingHydratedStorage);
//         },
//         icon: const Icon(Icons.thumb_up),
//         iconSize: iconSize,
//       );
//
// }
