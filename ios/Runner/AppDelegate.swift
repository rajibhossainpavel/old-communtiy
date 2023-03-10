import UIKit
import Flutter
import Firebase

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    let channel = FlutterMethodChannel(name: "jp.cayto.oshiruco", binaryMessenger: controller.binaryMessenger)

    channel.setMethodCallHandler({
      [weak self] (call: FlutterMethodCall, result: FlutterResult) -> Void in
      guard call.method == "setNotificationBadgeNumber" else {
        result(FlutterMethodNotImplemented)
        return
      }
      self?.setNotificationBadgeNumber(call.arguments as? Int ?? 0, result: result)
    })
      FirebaseApp.configure()
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func setNotificationBadgeNumber(_ number: Int, result: FlutterResult) {
    UIApplication.shared.applicationIconBadgeNumber = number
    result(nil)
  }
}
