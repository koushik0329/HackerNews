//
//  ForgotPasswordIIViewController.swift
//  Sample
//
//  Created by Koushik Reddy Kambham on 8/21/25.
//
import UIKit

class ForgotPasswordIIViewController: UIViewController {
    
    
    var ForgotPasswordLabel : UILabel!
    var EmailTextField : UITextField!
    var SendCodeButton : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    func setupUI(){
        view.backgroundColor = .black
        ForgotPasswordLabel = UILabel()
        ForgotPasswordLabel.text = "Forgot Password"
        ForgotPasswordLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        view.addSubview(ForgotPasswordLabel)
        ForgotPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        
        EmailTextField = UITextField()
        EmailTextField.placeholder = "Enter Your Email"
        EmailTextField.textAlignment = .left
        EmailTextField.borderStyle = .roundedRect
        EmailTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(EmailTextField)
        
        SendCodeButton = UIButton()
        SendCodeButton.setTitle("Send Code", for: .normal)
        view.addSubview(SendCodeButton)
        SendCodeButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            ForgotPasswordLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            ForgotPasswordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
        ])
    }
    
}
