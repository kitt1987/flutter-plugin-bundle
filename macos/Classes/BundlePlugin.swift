import Cocoa
import FlutterMacOS

public class BundlePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "bundle", binaryMessenger: registrar.messenger)
    let instance = BundlePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "executablePath":
      result(Bundle.main.executablePath)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
