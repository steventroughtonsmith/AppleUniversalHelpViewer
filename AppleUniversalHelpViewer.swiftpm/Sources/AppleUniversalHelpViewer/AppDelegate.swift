import UIKit
import AppleUniversalHelp

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
		let config = UISceneConfiguration(name: "", sessionRole: .windowApplication)
		config.delegateClass = COREHelpWindowSceneDelegate.self
		return config
	}
}
