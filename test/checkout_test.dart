import 'package:test/test.dart';
import 'package:intellitoggle_ci_codelab/checkout_service.dart';

void main() {
  group('Checkout Tests', () {
    test('Returns new checkout flow when enabled', () {
      final service = CheckoutService(true);

      expect(service.getCheckoutFlow(), equals('NEW_CHECKOUT'));
    });

    test('Returns legacy checkout flow when disabled', () {
      final service = CheckoutService(false);

      expect(service.getCheckoutFlow(), equals('LEGACY_CHECKOUT'));
    });
  });
}
