//U-N00B-or-Bot

import UIKit

protocol ColorDelegate {
    func paint(red: CGFloat, green: CGFloat, blue: CGFloat)
}


class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view.backgroundColor = UIColor(red: 1, green: 0, blue: 0.3, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let setVC = segue.destination as! ViewController
        setVC.delegate = self
    }

}

extension MainViewController: ColorDelegate{
    func paint(red: CGFloat, green: CGFloat, blue: CGFloat) {
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    
}
