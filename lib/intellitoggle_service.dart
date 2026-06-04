import 'dart:io';
import 'package:openfeature_provider_intellitoggle/openfeature_provider_intellitoggle.dart';

class IntelliToggleService {
  static Future<IntelliToggleProvider> initialize() async {
    final provider = IntelliToggleProvider(
      clientId: Platform.environment['INTELLITOGGLE_CLIENT_ID'] ?? '',
      clientSecret: Platform.environment['INTELLITOGGLE_CLIENT_SECRET'] ?? '',
      tenantId: Platform.environment['INTELLITOGGLE_TENANT_ID'] ?? '',
      options: IntelliToggleOptions(
        baseUri: Uri.parse('https://dev-api.intellitoggle.com'),
        enableLogging: true,
      ),
    );

    await provider.initialize();

    return provider;
  }

  static Future<bool> getNewCheckoutFlag() async {
    final provider = await initialize();

    final result = await provider.getBooleanFlag('new-checkout', false);

    return result.value;
  }
}
