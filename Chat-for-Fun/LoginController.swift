//
//  LoginController.swift
//  Chat for Fun
//
//  Created by Jeffrey on 22/08/2016.
//  Copyright © 2016 University of Melbourne. All rights reserved.
//

import UIKit

@IBDesignable
class LoginController: UIViewController {
    let inputContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.whiteColor()
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()
    
    let loginRegisterButton: UIButton = {
        let button = UIButton(type: .System)
        button.backgroundColor = UIColor(r: 80, g: 101, b: 161)
        button.setTitle("Register", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let nameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Name"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let nameSeparatorView: UIView = {
        let ns = UIView()
        ns.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        ns.translatesAutoresizingMaskIntoConstraints = false
        return ns
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email address"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let emailSeparatorView: UIView = {
        let es = UIView()
        es.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        es.translatesAutoresizingMaskIntoConstraints = false
        return es
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.secureTextEntry = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Snapchat_Logo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(r: 61, g: 91, b: 151)
        
        view.addSubview(inputContainerView)
        view.addSubview(loginRegisterButton)
        view.addSubview(profileImageView)
        
        setupInputContainerView()
        setupLoginRegisterButton()
        setupProfileImageView()
        
    }
    
    private func setupInputContainerView() {
        //setup constraints, x, y, width, height
        inputContainerView.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        inputContainerView.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor).active = true
        inputContainerView.widthAnchor.constraintEqualToAnchor(view.widthAnchor, constant: -24).active = true
        inputContainerView.heightAnchor.constraintEqualToConstant(150).active = true
        
        //setup fields in container
        inputContainerView.addSubview(nameTextField)
        inputContainerView.addSubview(nameSeparatorView)
        inputContainerView.addSubview(emailTextField)
        inputContainerView.addSubview(emailSeparatorView)
        inputContainerView.addSubview(passwordTextField)
        
        //setup constraints, x, y, width, height
        nameTextField.leftAnchor.constraintEqualToAnchor(inputContainerView.leftAnchor, constant: 12).active = true
        nameTextField.topAnchor.constraintEqualToAnchor(inputContainerView.topAnchor).active = true
        nameTextField.widthAnchor.constraintEqualToAnchor(inputContainerView.widthAnchor).active = true
        nameTextField.heightAnchor.constraintEqualToAnchor(inputContainerView.heightAnchor, multiplier: 1/3).active = true
        
        //setup constraints, x, y, width, height
        nameSeparatorView.leftAnchor.constraintEqualToAnchor(inputContainerView.leftAnchor).active = true
        nameSeparatorView.topAnchor.constraintEqualToAnchor(nameTextField.bottomAnchor).active = true
        nameSeparatorView.widthAnchor.constraintEqualToAnchor(inputContainerView.widthAnchor).active = true
        nameSeparatorView.heightAnchor.constraintEqualToConstant(1).active = true
        
        //setup constraints, x, y, width, height
        emailTextField.leftAnchor.constraintEqualToAnchor(inputContainerView.leftAnchor, constant: 12).active = true
        emailTextField.topAnchor.constraintEqualToAnchor(nameTextField.bottomAnchor).active = true
        emailTextField.widthAnchor.constraintEqualToAnchor(inputContainerView.widthAnchor).active = true
        emailTextField.heightAnchor.constraintEqualToAnchor(inputContainerView.heightAnchor, multiplier: 1/3).active = true
        
        //setup constraints, x, y, width, height
        emailSeparatorView.leftAnchor.constraintEqualToAnchor(inputContainerView.leftAnchor).active = true
        emailSeparatorView.topAnchor.constraintEqualToAnchor(emailTextField.bottomAnchor).active = true
        emailSeparatorView.widthAnchor.constraintEqualToAnchor(inputContainerView.widthAnchor).active = true
        emailSeparatorView.heightAnchor.constraintEqualToConstant(1).active = true
        
        //setup constraints, x, y, width, height
        passwordTextField.leftAnchor.constraintEqualToAnchor(inputContainerView.leftAnchor, constant: 12).active = true
        passwordTextField.topAnchor.constraintEqualToAnchor(emailTextField.bottomAnchor).active = true
        passwordTextField.widthAnchor.constraintEqualToAnchor(inputContainerView.widthAnchor).active = true
        passwordTextField.heightAnchor.constraintEqualToAnchor(inputContainerView.heightAnchor, multiplier: 1/3).active = true

    }
    
    private func setupLoginRegisterButton() {
        //setup constraints, x, y, width, height
        loginRegisterButton.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        loginRegisterButton.topAnchor.constraintEqualToAnchor(inputContainerView.bottomAnchor, constant: 12).active = true
        loginRegisterButton.widthAnchor.constraintEqualToAnchor(inputContainerView.widthAnchor).active = true
        loginRegisterButton.heightAnchor.constraintEqualToConstant(50).active = true
    }
    
    private func setupProfileImageView() {
        //setup constraints, x, y, width, height
        profileImageView.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        profileImageView.bottomAnchor.constraintEqualToAnchor(inputContainerView.topAnchor, constant: -20).active = true
        profileImageView.widthAnchor.constraintEqualToConstant(150).active = true
        profileImageView.heightAnchor.constraintEqualToConstant(150).active = true
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }


}

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
