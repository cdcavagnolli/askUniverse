import WatchKit

class ExtensionDelegate: NSObject, WKExtensionDelegate {

    func applicationWillResignActive() {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "reset"), object: nil)
    }
}
