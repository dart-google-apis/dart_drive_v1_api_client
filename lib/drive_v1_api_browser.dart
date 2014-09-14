library drive_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_drive_v1_api/src/browser_client.dart';
import "package:google_drive_v1_api/drive_v1_api_client.dart";

/** The API to interact with Drive. */
@deprecated
class Drive extends Client with BrowserClient {

  /** OAuth Scope2: View and manage Google Drive files that you have opened or created with this app */
  static const String DRIVE_FILE_SCOPE = "https://www.googleapis.com/auth/drive.file";

  final oauth.OAuth2 auth;

  Drive([oauth.OAuth2 this.auth]);
}
