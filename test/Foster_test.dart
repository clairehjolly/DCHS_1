// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:project/main.dart';
import 'package:project/screens/outreach/foster.dart';

void main() {


  testWidgets('TestFoster', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    Widget testWidget = new MediaQuery(
        data: new MediaQueryData(),
        child: new MaterialApp(home: new Foster())
    );
    await tester.pumpWidget(testWidget);

    // Verify that our counter starts at 0.
    expect(find.text('Foster Information'),findsOneWidget);
    //expect(find.text('If you would like to help DCHS but you cannot fit into your lifestyle the traditional DCHS volunteer commitment to serve a regular weekly,'+
    //                  ' two hour shift for six months, you may be interested in the following opportunity'+
    //                  ' \n\n As a Foster you provide a home for animals too young to be adopted, pregnant or new moms'+
    //                  ' those in need of extra socialization, those overly stressed at the shelter and those'+
    //                  'recovering from illness or injury'+
    //                  ' Please call fill out this form and call DCHS for submission details:'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    //await tester.tap(find.byIcon(Icons.add));
    //await tester.pump();

    // Verify that our counter has incremented.
    //expect(find.text('0'), findsNothing);
    //expect(find.text('1'), findsOneWidget);
  });
}
