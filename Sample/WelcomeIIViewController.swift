//
//  WelcomeIIViewController.swift
//  Sample
//
//  Created by Koushik Reddy Kambham on 8/21/25.
//

import UIKit

class WelcomeIIViewController: UIViewController {
    
    var WelcomeLabel: UILabel!
    var SignUporSignInLabel: UILabel!
    var SignUpButton: UIButton!
    var SignInButton: UIButton!
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        setupUI()
    }
    func setupUI() {
        
        view.backgroundColor = .black
        
        WelcomeLabel = UILabel()
        WelcomeLabel.textColor = .red
        WelcomeLabel.textAlignment = .left
        WelcomeLabel.font = .systemFont(ofSize: 30, weight: .bold)
        WelcomeLabel.text = "Welcome back!"
        WelcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(WelcomeLabel)
        
        SignUporSignInLabel = UILabel()
        SignUporSignInLabel.textColor = .white
        SignUporSignInLabel.text = "Please Sign up or Log in to continue securely"
        SignUporSignInLabel.textAlignment = .left
        SignUporSignInLabel.font = .systemFont(ofSize: 15, weight: .regular)
        SignUporSignInLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(SignUporSignInLabel)
        
        SignUpButton = UIButton()
        SignUpButton.setTitle("Sign Up", for: .normal)
        SignUpButton.setTitleColor(.white, for: .normal)
        SignUpButton.backgroundColor = .red
        SignUpButton.translatesAutoresizingMaskIntoConstraints = false
        SignUpButton.addTarget(self, action: #selector(SignUpAction), for: .touchUpInside)
        view.addSubview(SignUpButton)
        
        SignInButton = UIButton()
        SignInButton.setTitle("Log In", for: .normal)
        SignInButton.setTitleColor(.white, for: .normal)
        SignInButton.backgroundColor = .red
        SignInButton.translatesAutoresizingMaskIntoConstraints = false
        SignInButton.addTarget(self, action: #selector(SignInAction), for: .touchUpInside)
        view.addSubview(SignInButton)
        
        
        NSLayoutConstraint.activate([
            WelcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -50),
            WelcomeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -220),
            
            SignUporSignInLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -5),
            SignUporSignInLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -190),
            
            SignUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            SignUpButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 140),
            SignUpButton.widthAnchor.constraint(equalToConstant: 350),
            SignUpButton.heightAnchor.constraint(equalToConstant: 40),
            
            SignInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            SignInButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200),
            SignInButton.widthAnchor.constraint(equalToConstant: 350),
            SignInButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    @objc func SignInAction() {
        navigateToSignIn()
    }
    
    @objc func SignUpAction() {
        navigateToSignUp()
    }
    
    func navigateToSignIn() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginIIViewController")
        self.present(vc, animated: true, completion: nil)
    }
    
    func navigateToSignUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SignUpIIViewController")
        self.present(vc, animated: true, completion: nil)
    }
}
