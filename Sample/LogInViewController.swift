//
//  LogInViewController.swift
//  Sample
//
//  Created by Koushik Reddy Kambham on 8/15/25.
//

import UIKit

class LogInViewController: UIViewController {

    
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func loginAction(_ sender: Any) {
        print("login button clicked in login view")
        
        print("Email: \(emailInput.text ?? " ")")
        print("Password: \(passwordInput.text ?? " ")")
        
        if validateLoginEmail(email: emailInput.text) && validateLoginPassword(password: passwordInput.text) {
            print("Successfully logged In")
        }
        else{
            print("Please enter valid email and password")
        }
    }
    
    @IBAction func joinNowAction(_ sender: Any) {
        print("join now button clicked in login view")
    }
    
    @IBAction func forgotAction(_ sender: Any) {
        print("forgot Action")
    }
    
    func validateLoginEmail(email: String?) -> Bool {
        guard let email = email, email.contains("@gmail"), email.count > 10 else {
            print("Email is invlaid")
            return false
        }
        return true
    }
    
    func validateLoginPassword(password: String?) -> Bool {
        guard let password = password, password.count > 6 else {
            print("Password is invalid")
            return false
        }
        return true
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
