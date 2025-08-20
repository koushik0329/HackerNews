//
//  SignUpViewController.swift
//  Sample
//
//  Created by Koushik Reddy Kambham on 8/15/25.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var lastNameInput: UITextField!
    @IBOutlet weak var firstNameInput: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var verifyPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func SignUpViewAction(_ sender: Any) {
        print("signup button clicked in signup page")
        
        print("First name: \(firstNameInput.text ?? " ")")
        print("Last name: \(lastNameInput.text ?? " ")")
        print("Email: \(emailInput.text ?? " ")")
        print("Password: \(password.text ?? " ")")
        print("Verify Password: \(verifyPassword.text ?? " ")")
        
        
        if validateName(firstName: firstNameInput.text, lastName: lastNameInput.text) && validateSignUpEmail(email: emailInput.text) && validateSignUpPassword(password: password.text, verifyPassword: verifyPassword.text) {
            print("Account Created Succesfully !")
        }
        else{
            print("Please enter all the fields")
        }
        
    }
    
    @IBAction func LogInViewAction(_ sender: Any) {
        print("login button clicked in signup page")
    }
    
    func validateName (firstName : String?,lastName : String? ) -> Bool {
        guard let firstName = firstName, firstName.count > 0, let lastName = lastName, lastName.count > 0 else {
            print("Name is invalid")
            return false
        }
        return true
    }
    
    func validateSignUpEmail(email: String?) -> Bool {
        guard let email = email, email.contains("@gmail.com"), email.count > 10 else {
            print("Email is invalid")
            
            return false
        }
        return true
    }
    
    func validateSignUpPassword(password: String?, verifyPassword: String?) -> Bool {
        guard let password = password, password.count > 6 else {
            print("password is invalid")
            
            return false
        }
        guard let verifyPassword = verifyPassword, verifyPassword.count > 6 else {
            print("verify password is invalid")
            
            return false
        }
        return verifyPassword == password
        
//        if password != verifyPassword {
//                   print(" Password does not match")
//                    return false
//                }
//                return true
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
