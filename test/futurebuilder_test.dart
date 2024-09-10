// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
//
// void main() {
//   testWidgets('FutureBuilder test', (WidgetTester tester) async {
//     // Create a Completer to control the Future
//     final completer = Completer<double>();
//
//     // Build the widget
//     await tester.pumpWidget(
//       MaterialApp(
//         home: Scaffold(
//           body: FutureBuilder<double>(
//             future: completer.future,
//             builder: (BuildContext context, AsyncSnapshot<double> snapshot) {
//               if (snapshot.hasData) {
//                 return Container(
//                   child: Text('Data: ${snapshot.data}'),
//                 );
//               } else {
//                 return Center(
//                   child: CircularProgressIndicator(),
//                 );
//               }
//             },
//           ),
//         ),
//       ),
//     );
//
//     // Verify the CircularProgressIndicator is shown initially
//     expect(find.byType(CircularProgressIndicator), findsOneWidget);
//
//     // Complete the Future
//     completer.complete(42.0);
//
//     // Rebuild the widget with the resolved Future
//     await tester.pump();
//
//     // Verify the Container with the data is shown
//     expect(find.text('Data: 42.0'), findsOneWidget);
//   });
// }
