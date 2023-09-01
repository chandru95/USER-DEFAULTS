//
//  ThirdViewController.swift
//  user default
//
//  Created by Admin on 31/08/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var textfield2: UITextField!
    @IBOutlet weak var textfield1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textfield1.text = UserDefaults.standard.string(forKey: "Email")
        textfield2.text = UserDefaults.standard.string(forKey: "Password")
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logout(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier: "ViewController")as! ViewController
        self.present(viewcontroller, animated: true)
        
        
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
