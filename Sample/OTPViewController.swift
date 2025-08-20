//
//  OTPViewController.swift
//  Sample
//
//  Created by Koushik Reddy Kambham on 8/15/25.
//

import UIKit

class OTPViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ContinueAction(_ sender: Any) {
        print("clicked continue")
        navigateToCreateNewPassword()
    }
    
    func navigateToCreateNewPassword() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "CreateNewPasswordViewController") as? CreateNewPasswordViewController {
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
