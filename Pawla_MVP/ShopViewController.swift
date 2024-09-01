import UIKit

class ShopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func openWebsite(_ sender: UIButton) {
        if let url = URL(string: "https://www.vetopia.com.hk/") {
            UIApplication.shared.open(url, options: [:], completionHandler: { success in
                if success {
                    print("Website opened successfully")
                } else {
                    print("Failed to open the website")
                }
            })
        } else {
            print("Invalid URL")
        }
    }
}
