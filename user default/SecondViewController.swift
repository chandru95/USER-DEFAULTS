//
//  SecondViewController.swift
//  user default
//
//  Created by Admin on 30/08/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textfield2: UITextField!
    @IBOutlet weak var textfield1: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    func passwordvalidate(password: String) -> Bool {
        let passwordRegex = "^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}$"
        let passwordpred = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return passwordpred.evaluate(with: password)
    }
    func showAlert(title: String, message: String){
        
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func save(_ sender: Any) {
        let emailtesting = isValidEmail(email: textfield1.text!)
        let passwordchecking = passwordvalidate(password: textfield2.text!)
        print(passwordchecking)
        
        if emailtesting == true {
            
            if passwordchecking == true {
                UserDefaults.standard.set(textfield1.text, forKey: "Email")
                UserDefaults.standard.set(textfield2.text, forKey: "Password")
                self.performSegue(withIdentifier: "save", sender: nil)
                showAlert(title: "Sucess", message: "click here to login")
                
            }
            else  {
                showAlert(title: "Failure", message: "password error")
            }
            
            
        }
        else  {
            showAlert(title: "Failure", message: "invalid email")
        }
        
        
        
        
        
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}

