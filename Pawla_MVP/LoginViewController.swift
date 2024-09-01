import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func Login(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let signUpViewController = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.present(signUpViewController, animated: true, completion: nil)
        let userNameText = userName.text ?? "Guest"
        let welcomeMessage = "You have successfully logged in as: " + userNameText
        signUpViewController.setUp(welcMessage: welcomeMessage)
    }
}
