import 'package:auth0_flutter2/auth0/auth0_flutter_web/auth0_flutter_web.dart'
    as auth0_web;

import '../auth0_flutter_web/src/options.dart';

/// Initialize Auth0 class on web.
Future<auth0_web.Auth0> initAuth0Web(
  String auth0Domain,
  String auth0ClientId,
    String            domain,
     String           scope,
      String          audience,
        String        scheme,
) async {
  try {
    return auth0_web.createAuth0Client(
      auth0_web.Auth0ClientOptions(
        login_hint: "Welcome!",

        domain: auth0Domain,
        client_id: auth0ClientId,
        audience: audience,
        scope: scope,
        useRefreshTokens: true,
        sessionCheckExpiryDays: 1,
        
        
      ),
    );
  } catch (e) {
    throw Exception(e);
  }
}
