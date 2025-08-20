//
//  ForgotPasswordViewController.swift
//  Sample
//
//  Created by Koushik Reddy Kambham on 8/15/25.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var EmailInput: UITextField!
    
    @IBAction func SendCodeAction(_ sender: Any) {
        print("clicked send code button")
        
        print("EmailInput: \(EmailInput.text ?? "")")
        
        navigateToVerifyCode()
    }
    
    func navigateToVerifyCode() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "OTPViewController") as? OTPViewController {
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
