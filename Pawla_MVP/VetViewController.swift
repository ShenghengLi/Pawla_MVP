import UIKit

class VetViewController: UIViewController {
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var languagePicker: UIPickerView!
    
    let petNames = ["A", "B", "C", "D", "E"]
    let languages = ["English", "简体中文"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        languagePicker.delegate = self
        languagePicker.dataSource = self
        
    }
    
}

extension VetViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == self.pickerView {
            return petNames.count
        } else if pickerView == self.languagePicker {
            return languages.count
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == self.pickerView {
            return petNames[row]
        } else if pickerView == self.languagePicker {
            return languages[row]
        }
        return nil
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == self.pickerView {
            print("Selected pet name: \(petNames[row])")
        } else if pickerView == self.languagePicker {
            print("Selected language: \(languages[row])")
        }
    }
}
