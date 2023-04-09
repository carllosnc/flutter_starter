import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_starter/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Check home page", (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    expect(find.text('Flutter Starter'), findsOneWidget);
    expect(find.text('🍎'), findsOneWidget);
  });
}
