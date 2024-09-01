import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet private weak var welcomeMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func setUp(welcMessage:String){
        welcomeMessage.text = welcMessage
    }
}
