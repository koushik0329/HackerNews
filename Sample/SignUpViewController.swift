//
//  SignUpViewController.swift
//  Sample
//
//  Created by Koushik Reddy Kambham on 8/15/25.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var EmailInput: UITextField!
    @IBOutlet weak var LastNameInput: UITextField!
    @IBOutlet weak var FirstNameInput: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var VerifyPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func SignUpViewAction(_ sender: Any) {
        print("signup button clicked in signup page")
        
        print("First name: \(FirstNameInput.text ?? " ")")
        print("Last name: \(LastNameInput.text ?? " ")")
        print("Email: \(EmailInput.text ?? " ")")
        print("Password: \(Password.text ?? " ")")
        print("Verify Password: \(VerifyPassword.text ?? " ")")
        
    }
    
    @IBAction func LogInViewAction(_ sender: Any) {
        print("login button clicked in signup page")
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
