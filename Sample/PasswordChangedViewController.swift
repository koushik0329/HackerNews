//
//  PasswordChangedViewController.swift
//  Sample
//
//  Created by Koushik Reddy Kambham on 8/15/25.
//

import UIKit

class PasswordChangedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func BackToLogin(_ sender: Any) {
        print("back to login")
        navigateToLogin()
    }
    
    func navigateToLogin() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let loginViewController = storyboard.instantiateViewController(withIdentifier: "LogInViewController") as? LogInViewController {
            self.navigationController?.pushViewController(loginViewController, animated: true)
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
