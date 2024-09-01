import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // Initialize window with the windowScene
        window = UIWindow(windowScene: windowScene)

        // Determine which view controller to set as the root
        if UserDefaults.standard.bool(forKey: "hasOpenedAppBefore") {
            // If the app has been opened before, show the secondary view controller
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let secondaryVC = storyboard.instantiateViewController(withIdentifier: "SecondaryViewController") // Replace with the correct identifier
            window?.rootViewController = secondaryVC
        } else {
            // If it's the first time opening the app, show the initial view controller
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let initialVC = storyboard.instantiateViewController(withIdentifier: "InitialViewController") // Replace with the correct identifier
            window?.rootViewController = initialVC
            
            // Set a flag indicating the app has been opened at least once
            UserDefaults.standard.set(true, forKey: "hasOpenedAppBefore")
        }

        // Make the window visible
        window?.makeKeyAndVisible()
        
        // Apply the user preference for dark or light mode globally
        applyUserInterfaceStyle(windowScene)
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        if let windowScene = scene as? UIWindowScene {
            applyUserInterfaceStyle(windowScene)
        }
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        if let windowScene = scene as? UIWindowScene {
            applyUserInterfaceStyle(windowScene)
        }
    }

    private func applyUserInterfaceStyle(_ windowScene: UIWindowScene) {
        let isDarkMode = UserDefaults.standard.bool(forKey: "isDarkMode")
        windowScene.windows.forEach { window in
            window.overrideUserInterfaceStyle = isDarkMode ? .dark : .light
        }
    }
    
    // Other SceneDelegate methods...
}
