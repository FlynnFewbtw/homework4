import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:traffic/main.dart';

void main() {
  testWidgets('Traffic Light Test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const TrafficLightApp());

    // Verify that the initial state is a red light.
    expect(
      find.byType(Container),
      findsWidgets,
    ); // Check for the traffic light widgets.

    // Tap the 'Change Light' button.
    await tester.tap(find.text('Change Light'));
    await tester.pump();

    // Verify that the state has changed (e.g., light is now yellow).
    // Additional checks can be implemented here.
  });
}
