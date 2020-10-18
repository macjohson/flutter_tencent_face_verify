import Flutter
import UIKit

public class SwiftFlutterTencentFaceVerifyPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_tencent_face_verify", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterTencentFaceVerifyPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
