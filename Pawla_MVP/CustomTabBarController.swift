import UIKit

class CustomTabBarController: UITabBarController, UITabBarControllerDelegate {
    @IBInspectable var initialIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = initialIndex
        self.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar initially
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    // UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        // Hide the navigation bar whenever a new tab is selected
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
}

