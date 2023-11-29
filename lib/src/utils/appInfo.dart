import 'package:package_info_plus/package_info_plus.dart';

class AppInfo {
  static Future<String> getName() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.appName;
  }

  static Future<String> getPackageName() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.packageName;
  }

  static Future<String> getVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  static Future<String> getBuildNumber() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.buildNumber;
  }

  static Future<String> getInstallerStore() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.installerStore!;
  }

  static Future<String> getBuildSigniture() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.buildSignature;
  }
}
