class CheckoutService {
  final bool newCheckoutEnabled;

  CheckoutService(this.newCheckoutEnabled);

  String getCheckoutFlow() {
    if (newCheckoutEnabled) {
      return 'NEW_CHECKOUT';
    }

    return 'LEGACY_CHECKOUT';
  }
}
