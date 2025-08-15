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
    }
    
    @IBAction func joinNowAction(_ sender: Any) {
        print("join now button clicked in login view")
    }
    @IBAction func forgotAction(_ sender: Any) {
        print("forgot Action")
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
