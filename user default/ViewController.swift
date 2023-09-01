//
//  ViewController.swift
//  user default
//
//  Created by Admin on 30/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var textfield2: UITextField!
    @IBOutlet weak var textfield1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func register(_ sender: Any) {
        
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextviewcontroller = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.present(nextviewcontroller, animated: true, completion: nil)
    }
    
    
    @IBAction func login(_ sender: Any) {
        
        if textfield1.text == UserDefaults.standard.string(forKey: "Email") && textfield2.text == UserDefaults.standard.string(forKey: "Password") {
            self.performSegue(withIdentifier: "login", sender: nil)
            UserDefaults.standard.set(true, forKey: "login")
        }
        else{
            let alert = UIAlertController(title: "Alert", message: "please enter the details", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: { (action) in alert.dismiss(animated: true, completion: nil)
                
            }))
        }
    }
    

}

