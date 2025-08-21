//
//  WelcomeIIViewController.swift
//  Sample
//
//  Created by Koushik Reddy Kambham on 8/20/25.
//

import UIKit

class WelcomeIIViewController: UIViewController {
    var LogInToYourAccountLabel: UILabel!
    var EmailLabel: UILabel!
    var EmailTextField: UITextField!
    var PasswordLabel: UILabel!
    var passwordTextField: UITextField!
    var loginButton: UIButton!
    var ForgotPasswordLabel: UILabel!
    var DontHaveAnAccountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        
        view.backgroundColor = .black
        
        LogInToYourAccountLabel = UILabel()
        LogInToYourAccountLabel.text = "Log In To Your Account"
        LogInToYourAccountLabel.textColor = .white
        LogInToYourAccountLabel.textAlignment = .center
        LogInToYourAccountLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LogInToYourAccountLabel)
        
        EmailLabel = UILabel()
        EmailLabel.text = "Email"
        EmailLabel.textColor = .white
        EmailLabel.textAlignment = .center
        EmailLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(EmailLabel)
        
        
        EmailTextField = UITextField()
        EmailTextField.placeholder = "Enter Email"
        EmailTextField.textAlignment = .center
        EmailTextField.borderStyle = .roundedRect
        EmailTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(EmailTextField)
        
        PasswordLabel = UILabel()
        PasswordLabel.text = "Password"
        PasswordLabel.textColor = .white
        PasswordLabel.textAlignment = .center
        PasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(PasswordLabel)
        
        passwordTextField = UITextField()
        passwordTextField.placeholder = "Enter Password"
        passwordTextField.textAlignment = .center
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.isSecureTextEntry = true
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordTextField)
        
        ForgotPasswordLabel = UILabel()
        ForgotPasswordLabel.text = "Forgot Password?"
        ForgotPasswordLabel.textColor = .blue
        ForgotPasswordLabel.textAlignment = .center
        ForgotPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ForgotPasswordLabel)
        
        loginButton = UIButton(type: .system)
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .systemRed
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginButton)
        
        DontHaveAnAccountLabel = UILabel()
        DontHaveAnAccountLabel.text = "Dont have an Account? Sign Up"
        
        

        NSLayoutConstraint.activate([
            LogInToYourAccountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            LogInToYourAccountLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150),
            
            
            EmailLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -150),
            EmailLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            
            EmailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            EmailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60),
            EmailTextField.widthAnchor.constraint(equalToConstant: 350),
            EmailTextField.heightAnchor.constraint(equalToConstant: 40),
            
            PasswordLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -140),
            PasswordLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),

            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20),
            passwordTextField.widthAnchor.constraint(equalTo: EmailTextField.widthAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            ForgotPasswordLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 140),
            ForgotPasswordLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 55),

            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 60),
            loginButton.widthAnchor.constraint(equalTo: EmailTextField.widthAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 40)
            
            
        ])
            
    }
    
}
