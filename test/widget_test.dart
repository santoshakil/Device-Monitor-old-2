import 'package:flutter_test/flutter_test.dart';
import '../lib/Pages/Home/home.dart';

void main() {
  testWidgets('Home Test', (WidgetTester tester) async {
    await tester.pumpWidget(MyHomePage());
  });
}
