
import UIKit

class ViewController: UIViewController {

    var numberOfScreen: Double = 0
    var firstNum: Double = 0
    var mathSign: Bool = false
    var operation: Int = 0
    
    @IBOutlet var result: UILabel!
    
    @IBAction func digits(_ sender: UIButton) {
    
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
        } else {
            result.text = result.text! + String(sender.tag)
        }
        
        numberOfScreen = Double(result.text!)!
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
    
        
        if result.text != "" && sender.tag != 10 && sender.tag != 15 {
            
            firstNum = Double(result.text!)!
            
            if sender.tag == 11 { // Деление
                result.text = "/"
            }
            else if sender.tag == 12 { // Умножение
                result.text = "*"
            }
            else if sender.tag == 13 { // Вычитание
                result.text = "-"
            }
            else if sender.tag == 14 { // Добавление
                result.text = "+"
            }
            
            operation = sender.tag
            
            mathSign = true
        }
        else if sender.tag == 15 { //посчитать все
            if operation == 11 {
                result.text = String(firstNum / numberOfScreen)
            }
            else if operation == 12 {
                result.text = String(firstNum * numberOfScreen)
            }
            else if operation == 13 {
                result.text = String(firstNum - numberOfScreen)
            }
            else if operation == 14 {
                result.text = String(firstNum + numberOfScreen)
            }
        }
        else if sender.tag == 10 {
            result.text = ""
            firstNum = 0
            numberOfScreen = 0
            operation = 0
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

