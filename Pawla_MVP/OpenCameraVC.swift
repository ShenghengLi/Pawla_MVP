import UIKit

class OpenCameraVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func openCamera(_ sender: UIButton) {
        // Check if the device has a camera
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.allowsEditing = true
            present(imagePicker, animated: true, completion: nil)
        } else {
            // Show an alert if the device does not have a camera
            let alert = UIAlertController(title: "No Camera", message: "This device does not have a camera.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    // Handle the captured image
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let editedImage = info[.editedImage] as? UIImage {
            // Use the edited image
            print("Image captured: \(editedImage)")
        } else if let originalImage = info[.originalImage] as? UIImage {
            // Use the original image
            print("Image captured: \(originalImage)")
        }
        dismiss(animated: true, completion: nil)
    }
    
    // Handle cancellation of the camera
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}
