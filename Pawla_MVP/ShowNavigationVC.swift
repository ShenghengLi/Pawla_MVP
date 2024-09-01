import UIKit

class ShowNavigationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Show the navigation bar for the entire navigation stack
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
    }
}
