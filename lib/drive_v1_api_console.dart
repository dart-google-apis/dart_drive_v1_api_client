library drive_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_drive_v1_api/src/cloud_api_console.dart';

import "package:google_drive_v1_api/drive_v1_api_client.dart";

/** The API to interact with Drive. */
class Drive extends Client with ConsoleClient {

  /** OAuth Scope2: View and manage Google Drive files that you have opened or created with this app */
  static const String DRIVE_FILE_SCOPE = "https://www.googleapis.com/auth/drive.file";

  final oauth2.OAuth2Console auth;

  Drive([oauth2.OAuth2Console this.auth]);
}
