import UIKit

class CountryView: UIView {
    
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var countryNameLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setup(_ country: Country) {
        let countryCode = country.code
            flagImageView.layer.borderWidth = 0.5
            flagImageView.layer.borderColor = UIColor.darkGray.cgColor
            flagImageView.layer.cornerRadius = 5
            flagImageView.layer.masksToBounds = true
            flagImageView.image = UIImage(named: countryCode.lowercased())
        
        countryNameLabel.text = country.name
    }
    
    override func layoutSubviews(){
        super.layoutSubviews()
        flagImageView.layer.cornerRadius = flagImageView.frame.size.height / 2
    }
}
