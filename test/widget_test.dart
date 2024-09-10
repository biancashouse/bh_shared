// import 'package:bh_shared/bh_shared.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
//
// void main() {
//   testWidgets('App test', (WidgetTester tester) async {
//
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(MaterialApp(
//       title: 'bh_shared pkg demo',
//       home: HomePageProvider()
//           .getWebOrMobileHomePage(const TestHome(), const TestHome()),
//     ));
//
//     await tester.pumpAndSettle(); // Wait for future to complete
//
//     // Find any widget that contains text
//     Finder anyTextFinder = find.textContaining('');
//     // Finder textFinderSUCCESS = find.text('SUCCESS');
//     expect(anyTextFinder, findsWidgets);
//     // expect(find.text('FAIL'), findsOneWidget);
//   });
// }
//
// class TestHome extends StatelessWidget {
//   const TestHome({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<bool>(future: base.localStorage_init(), builder: (context, snapshot) {
//       if (snapshot.connectionState == ConnectionState.waiting) {
//         return const CircularProgressIndicator();
//       } else if(snapshot.hasError) {
//         return Text('Error: ${snapshot.error}');
//       } else if (snapshot.hasData) {
//         return Text(snapshot.hasData && snapshot.data! ? "SUCCESS" : "FAIL");
//       } else {
//         return const Text('No data');
//       }
//     });
//     // var gotits = base.localStorage_read('gotits').toString();
//     // return Text(gotits);
//   }
// }
