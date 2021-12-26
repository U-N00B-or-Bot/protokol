//U-N00B-or-Bot

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var variableView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var delegate: ColorDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        variableView.layer.cornerRadius = 20
        variableView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        
      
        
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
    }
    
    @IBAction func slidersAction() {
        redLabel.text = String(round(1000 * redSlider.value) / 1000)
        greenLabel.text = String(round(1000 * greenSlider.value) / 1000)
        blueLabel.text = String(round(1000 * blueSlider.value) / 1000)
        
        let redColor = CGFloat(redSlider.value)
        let greenColor = CGFloat(greenSlider.value)
        let blueColor = CGFloat(blueSlider.value)
        
        variableView.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
        
    }
    
    @IBAction func btnExit() {
        let redColor = CGFloat(redSlider.value)
        let greenColor = CGFloat(greenSlider.value)
        let blueColor = CGFloat(blueSlider.value)
        delegate.paint(red: redColor, green: greenColor, blue: blueColor)
        dismiss(animated: true)
    }
    
}

