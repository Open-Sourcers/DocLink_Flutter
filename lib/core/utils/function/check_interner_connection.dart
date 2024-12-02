import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> checkInternetConnection() async {
  final List<ConnectivityResult> connectivityResult =
      await (Connectivity().checkConnectivity());
// This condition is for demo purposes only to explain every connection type.
// Use conditions which work for your requirements.
  if (connectivityResult.contains(ConnectivityResult.mobile)) {
    // Mobile network available.
    return true;
  } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
    return true;
    // Wi-fi is available.
    // Note for Android:
    // When both mobile and Wi-Fi are turned on system will return Wi-Fi only as active network type
  }
  return false;
}
