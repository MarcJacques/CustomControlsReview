//
//  SignupPage.swift
//  CustomControls
//
//  Created by Marc Jacques on 9/13/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import Foundation
import UIKit

class SignupPage: UIControl {
   
    // Mark: - Properties
    
    let backgroundImageView: UIImageView = UIImageView()
    let emailLabel: UILabel = UILabel()
    let passwordLabel = UILabel()
   
    let emailContainerView = UIView()
    let passwordContainerView = UIView()
    
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    
    let loginButton = UIButton()
//
    // MARK: - Required Initializers
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupSubViews()
    }
    
    // MARK:  - Methods and Functions
    
    func setupSubViews() {
        // background Image
        backgroundColor = .orange
        addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        backgroundImageView.image = UIImage(named: "BackgroundPhoto")
        
        // email label
        
        addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        emailLabel.topAnchor.constraint(equalTo: topAnchor, constant: 150).isActive = true
        emailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        emailLabel.text = "Enter email:"
        emailLabel.font = UIFont.systemFont(ofSize: 18.0, weight: .light)
        
        //Email ContainerView
        addSubview(emailContainerView)
        emailContainerView.translatesAutoresizingMaskIntoConstraints = false
        emailContainerView.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor).isActive = true
        emailContainerView.topAnchor.constraint(equalToSystemSpacingBelow: emailLabel.bottomAnchor, multiplier: 1.0).isActive = true
        emailContainerView.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor).isActive = true
        emailContainerView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        emailContainerView.layer.borderColor = UIColor.black.cgColor
        emailContainerView.layer.borderWidth = 2.0
        emailContainerView.layer.cornerRadius = 5.0
        
        //email testfield
        emailContainerView.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.leadingAnchor.constraint(equalTo: emailContainerView.leadingAnchor, constant: 8.0).isActive = true
        emailTextField.topAnchor.constraint(equalTo: emailContainerView.topAnchor, constant: 8).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: emailContainerView.trailingAnchor, constant: -8).isActive = true
        emailTextField.bottomAnchor.constraint(equalTo: emailContainerView.bottomAnchor, constant: -8)
        emailTextField.placeholder = "Email"
        
        // Password label
        
        addSubview(passwordLabel)
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        passwordLabel.topAnchor.constraint(equalTo: emailContainerView.bottomAnchor, constant: 16).isActive = true
        passwordLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        passwordLabel.text = "Enter Password:"
        passwordLabel.font = UIFont.systemFont(ofSize: 18.0, weight: .light)
        
        //Password ContainerView
        addSubview(passwordContainerView)
        passwordContainerView.translatesAutoresizingMaskIntoConstraints = false
        passwordContainerView.leadingAnchor.constraint(equalTo: passwordLabel.leadingAnchor).isActive = true
        passwordContainerView.topAnchor.constraint(equalToSystemSpacingBelow: passwordLabel.bottomAnchor, multiplier: 1.0).isActive = true
        passwordContainerView.trailingAnchor.constraint(equalTo: passwordLabel.trailingAnchor).isActive = true
        passwordContainerView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        passwordContainerView.layer.borderColor = UIColor.black.cgColor
        passwordContainerView.layer.borderWidth = 2.0
        passwordContainerView.layer.cornerRadius = 5.0
        
        //password testfield
        passwordContainerView.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.leadingAnchor.constraint(equalTo: passwordContainerView.leadingAnchor, constant: 8.0).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: passwordContainerView.topAnchor, constant: 8).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: passwordContainerView.trailingAnchor, constant: -8).isActive = true
        passwordTextField.bottomAnchor.constraint(equalTo: passwordContainerView.bottomAnchor, constant: -8)
        passwordTextField.placeholder = "Password"
        
        addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
//        loginButton.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor).isActive = true
        loginButton.topAnchor.constraint(equalToSystemSpacingBelow: passwordContainerView.bottomAnchor, multiplier: 1).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        loginButton.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor).isActive = true
        loginButton.setTitle(" Login ", for: .normal)
        loginButton.layer.borderColor = UIColor.black.cgColor
        loginButton.layer.borderWidth = 2
        loginButton.layer.cornerRadius = 5
        loginButton.setTitleColor(.black, for: .normal)
    }
}
