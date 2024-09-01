import UIKit

class SettingsVC: UIViewController {
    
    @IBOutlet weak var darkModeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Retrieve the user preference from UserDefaults
        let isDarkMode = UserDefaults.standard.bool(forKey: "isDarkMode")
        darkModeSwitch.isOn = isDarkMode
        
        // Set the global user interface style based on the user preference
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            windowScene.windows.forEach { window in
                window.overrideUserInterfaceStyle = isDarkMode ? .dark : .light
            }
        }
        
    }

    @IBAction func toggleDarkLightMode(_ sender: UISwitch) {
        // Toggle between dark and light mode based on the switch state
        let isDarkMode = sender.isOn
        
        // Set the global user interface style based on the switch state
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            windowScene.windows.forEach { window in
                window.overrideUserInterfaceStyle = isDarkMode ? .dark : .light
            }
        }
        
        // Save user preference
        UserDefaults.standard.set(isDarkMode, forKey: "isDarkMode")
    }
    
    
    @IBAction func resetAppState(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "hasOpenedAppBefore")
        UserDefaults.standard.synchronize()
        
        let alert = UIAlertController(title: "Reset", message:"App state has been reset. Please restart the app to see the changes.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style:.default, handler:nil))
        present(alert, animated:true, completion: nil)
    }
}
