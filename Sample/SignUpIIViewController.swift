//
//  SignUpIIViewController.swift
//  Sample
//
//  Created by Koushik Reddy Kambham on 8/21/25.
//

import UIKit

class SignUpIIViewController: UIViewController {
    
    var CreateYourAccountLabel: UILabel!
    var EmailTextField: UITextField!
    var FirstNameTextField: UITextField!
    var LastNameTextField: UITextField!
    var PasswordTextField: UITextField!
    var VerifyPasswordTextField: UITextField!
    var SignUpButton: UIButton!
    var AlreadyHaveAnAccountLabel: UILabel!
    var SignInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    func setupUI() {
        view.backgroundColor = .black
        
        CreateYourAccountLabel = UILabel()
        CreateYourAccountLabel.textColor = .red
        CreateYourAccountLabel.textAlignment = .left
        CreateYourAccountLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        CreateYourAccountLabel.text = "Create Your Account"
        CreateYourAccountLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(CreateYourAccountLabel)
        
        EmailTextField = UITextField()
        EmailTextField.placeholder = "Enter Email"
        EmailTextField.textAlignment = .left
        EmailTextField.borderStyle = .roundedRect
        EmailTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(EmailTextField)
        
        FirstNameTextField = UITextField()
        FirstNameTextField.placeholder = "Enter First Name"
        FirstNameTextField.textAlignment = .left
        FirstNameTextField.borderStyle = .roundedRect
        FirstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(FirstNameTextField)
        
        LastNameTextField = UITextField()
        LastNameTextField.placeholder = "Enter Last Name"
        LastNameTextField.textAlignment = .left
        LastNameTextField.borderStyle = .roundedRect
        LastNameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(LastNameTextField)
        
        PasswordTextField = UITextField()
        PasswordTextField.placeholder = "Enter Password"
        PasswordTextField.textAlignment = .left
        PasswordTextField.borderStyle = .roundedRect
        PasswordTextField.isSecureTextEntry = true
        PasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(PasswordTextField)
        
        VerifyPasswordTextField = UITextField()
        VerifyPasswordTextField.placeholder = "Enter Password"
        VerifyPasswordTextField.textAlignment = .left
        VerifyPasswordTextField.borderStyle = .roundedRect
        VerifyPasswordTextField.isSecureTextEntry = true
        VerifyPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(VerifyPasswordTextField)
        
        SignUpButton = UIButton(type: .system)
        SignUpButton.setTitle("Sign Up", for: .normal)
        SignUpButton.backgroundColor = .systemRed
        SignUpButton.setTitleColor(UIColor.white, for: .normal)
        SignUpButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(SignUpButton)
        
        AlreadyHaveAnAccountLabel = UILabel()
        AlreadyHaveAnAccountLabel.text = "Already have an Account?"
        AlreadyHaveAnAccountLabel.textColor = .white
        AlreadyHaveAnAccountLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(AlreadyHaveAnAccountLabel)
        
        SignInButton = UIButton(type: .system)
        SignInButton.setTitle("Sign In", for: .normal)
        SignInButton.setTitleColor(UIColor.blue, for: .normal)
        SignInButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(SignInButton)
        
        let textFieldStack = UIStackView(arrangedSubviews: [FirstNameTextField, LastNameTextField, EmailTextField, PasswordTextField, VerifyPasswordTextField])
                textFieldStack.axis  = .vertical
                textFieldStack.distribution  = .fillEqually
                textFieldStack.spacing  = 30
                textFieldStack.translatesAutoresizingMaskIntoConstraints  = false
                view.addSubview(textFieldStack)
        
        NSLayoutConstraint.activate([
            CreateYourAccountLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            CreateYourAccountLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

            textFieldStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textFieldStack.topAnchor.constraint(equalTo: CreateYourAccountLabel.bottomAnchor, constant: 30),
            textFieldStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textFieldStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            SignUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            SignUpButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 140),
            SignUpButton.widthAnchor.constraint(equalToConstant: 350),
            SignUpButton.heightAnchor.constraint(equalToConstant: 40),
            
            AlreadyHaveAnAccountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -60),
            AlreadyHaveAnAccountLabel.topAnchor.constraint(equalTo: SignUpButton.bottomAnchor, constant: 20),
//            
            SignInButton.leadingAnchor.constraint(equalTo: AlreadyHaveAnAccountLabel.trailingAnchor, constant: 10),
            SignInButton.centerYAnchor.constraint(equalTo: AlreadyHaveAnAccountLabel.centerYAnchor)
        ])

    }
}
