//
//  ViewController.swift
//  Sample
//
//  Created by Koushik Reddy Kambham on 8/13/25.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SignUpAction(_ sender: Any) {
        print("SignUp button clicked")
        navigateToSignUpScreen()
    }
    
    @IBAction func LogInAction(_ sender: Any) {
        print("LogIn button clicked")
        navigateToLogInScreen()
    }
    
    func navigateToSignUpScreen() {
        // create a story borad reference
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //story board id should be used here
        if let signUpVC = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController{
            self.navigationController?.pushViewController(signUpVC, animated: true)
        }
    }
    
    func navigateToLogInScreen() {
        // create a story borad reference
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //story board id should be used here
        if let loginVC = storyboard.instantiateViewController(withIdentifier: "LogInViewController") as? LogInViewController{
            self.navigationController?.pushViewController(loginVC, animated: true)
        }
    }
}

