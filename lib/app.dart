import 'checkout_service.dart';
import 'intellitoggle_service.dart';

Future<void> runDemo() async {
  try {
    final enabled = await IntelliToggleService.getNewCheckoutFlag();

    final checkoutService = CheckoutService(enabled);

    print('Flag Value: $enabled');

    print('Checkout Flow: ${checkoutService.getCheckoutFlow()}');
  } catch (e) {
    print('Error: $e');
  }
}
