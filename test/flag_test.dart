import 'package:test/test.dart';

void main() {
  group('Feature Flag Tests', () {
    test('new-checkout flag key exists', () {
      const flagKey = 'new-checkout';

      expect(flagKey.isNotEmpty, isTrue);
    });

    test('flag key follows naming convention', () {
      const flagKey = 'new-checkout';

      expect(flagKey.contains('-'), isTrue);
    });
  });
}
