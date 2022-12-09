import 'package:auth0_flutter/auth0_flutter.dart';

/// Initialize Auth0 class on mobile.
Auth0 initAuth0Mobile(
  String auth0Domain,
  String auth0ClientId,
    String            domain,
     String           scope,
      String          audience,
        String        scheme,
        String description,
        String title,
        String cancelTitle,
        String fallbackTitle
) {
  return Auth0(
    auth0Domain,
    auth0ClientId,
    localAuthentication: LocalAuthentication(
      description: description,
      title: title,
      cancelTitle: cancelTitle,
      fallbackTitle: fallbackTitle,

    )
  );
}
