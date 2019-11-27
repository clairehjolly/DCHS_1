// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:project/main.dart';
import 'package:project/screens/settings/Notifications.dart';
import 'package:project/screens/settings/clearNotifications.dart';

void testClearNotifications(){

  testWidgets('TestClearNotifications', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    Widget testWidget = new MediaQuery(
        data: new MediaQueryData(),
        child: new MaterialApp(home: new clearNotifications())
    );
    await tester.pumpWidget(testWidget);

    // Verify that our counter starts at 0.
    expect(find.text('Notifications Cleared'),findsOneWidget);

    // Unsure how to test firebase functionality,  could not find clear documentation on how to do this
    // Tap the '+' icon and trigger a frame.
    //await tester.tap(find.byIcon(Icons.add));
    //await tester.pump();

    // Verify that our counter has incremented.
    //expect(find.text('0'), findsNothing);
    //expect(find.text('1'), findsOneWidget);
  });
}

void testNotifications(){

  testWidgets('TestNotifications', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    Widget testWidget = new MediaQuery(
        data: new MediaQueryData(),
        child: new MaterialApp(home: new notifications())
    );
    await tester.pumpWidget(testWidget);

    // Verify that our counter starts at 0.
    expect(find.text('Notifications'),findsOneWidget);

    // Unsure how to test firebase functionality,  could not find clear documentation on how to do this
    // Tap the '+' icon and trigger a frame.
    //await tester.tap(find.byIcon(Icons.add));
    //await tester.pump();

    // Verify that our counter has incremented.
    //expect(find.text('0'), findsNothing);
    //expect(find.text('1'), findsOneWidget);
  });
}

void main() {
 testNotifications();
 testClearNotifications();

}
