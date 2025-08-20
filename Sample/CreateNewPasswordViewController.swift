//
//  CreateNewPasswordViewController.swift
//  Sample
//
//  Created by Koushik Reddy Kambham on 8/15/25.
//

import UIKit

class CreateNewPasswordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var PasswordInput: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    
    @IBAction func ResetPasswordAction(_ sender: Any) {
        print("Reset Password Action")
        
        print("PasswordInput: \(PasswordInput.text ?? "")")
        print("confirmPassword: \(confirmPassword.text ?? ""))")
        
        navigateToPasswordChangedViewController()
    }
    
    func navigateToPasswordChangedViewController(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "PasswordChangedViewController") as? PasswordChangedViewController{
            self.navigationController?.pushViewController(vc, animated: true)
        }
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
