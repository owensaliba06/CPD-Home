import 'package:flutter_test/flutter_test.dart';
import 'package:cpd_home/app.dart';

void main() {
  testWidgets('App builds', (tester) async {
    await tester.pumpWidget(const GeoSnapApp());
    expect(find.text('GeoSnap Journal'), findsOneWidget);
  });
}
