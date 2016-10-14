import UIKit

class ViewController: UIViewController, CountryPhoneCodePickerDelegate {
    
    @IBOutlet weak var selectedCountryLabel: UILabel!
    @IBOutlet weak var countryPhoneCodePicker: CountryPicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        let locale = Locale.current
        let code = (locale as NSLocale).object(forKey: NSLocale.Key.countryCode) as! String
        
        countryPhoneCodePicker.countryPhoneCodeDelegate = self
        countryPhoneCodePicker.setCountry(code)
    }
    
    // MARK: - CountryPhoneCodePicker Delegate
    
    func countryPhoneCodePicker(_ picker: CountryPicker, didSelectCountryCountryWithName name: String, countryCode: String, phoneCode: String) {
        selectedCountryLabel.text = name + " " + countryCode + " " + phoneCode
    }
    
}

