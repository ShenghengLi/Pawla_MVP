import UIKit

class CustomNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup for the navigation bar appearance, if needed
    }

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        // Before pushing the view controller, setup the custom back button for the next view controller
        setupCustomNavigationItem(for: viewController)
        
        // Push the view controller onto the navigation stack
        super.pushViewController(viewController, animated: animated)
    }
    
    func setupCustomNavigationItem(for viewController: UIViewController) {
        // Create a custom back button with the arrow image
        let backButtonImage = UIImage(named: "back")?.withRenderingMode(.alwaysOriginal)
        let backButton = UIBarButtonItem(image: backButtonImage, style: .plain, target: self, action: #selector(backButtonTapped))
        
        // Set the custom back button for the incoming view controller
        viewController.navigationItem.leftBarButtonItem = backButton
        
    }

    @objc func backButtonTapped() {
        // Handle the back button action
        self.popViewController(animated: true)
    }
}
