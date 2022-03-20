//
//  DisProfile.swift
//  Navigation
//
//  Created by Даниил Сокол on 19.03.2022.
//

import Foundation
import UIKit

class DisProfile : UIView {
    
    
    private let logoVK: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "logo")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let infoLogin: UITextField = {
        let login = UITextField()
        login.translatesAutoresizingMaskIntoConstraints = false
        login.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        login.tintColor = .black
        login.layer.borderWidth = 0.5
        login.layer.borderColor = UIColor.lightGray.cgColor
        login.layer.cornerRadius = 10
        login.backgroundColor = .systemGray6
        login.textAlignment = .left
        login.placeholder = "  Email or number"
    
        return login
    }()
    
    private let infoPassword: UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        password.tintColor = .black
        password.layer.borderWidth = 0.5
        password.layer.borderColor = UIColor.lightGray.cgColor
        password.layer.cornerRadius = 10
        password.backgroundColor = .systemGray6
        password.textAlignment = .left
        password.placeholder = "  Password"
        password.clipsToBounds = true
        password.isSecureTextEntry = true
    
        return password
    }()
    
    private let logIn: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "blue_pixel")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 10
        image.clipsToBounds = true
        return image
    }()
   
    private let textLogIn: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Log In"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .white
        
        return label
    }()
    func addConstraints(view: UIView) {
        
        [logoVK, infoLogin, infoPassword, logIn, textLogIn].forEach{ addSubview($0) }
        
        NSLayoutConstraint.activate([
            logoVK.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            logoVK.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0),
            logoVK.widthAnchor.constraint(equalToConstant: 100),
            logoVK.heightAnchor.constraint(equalToConstant: 100),
            
            infoLogin.bottomAnchor.constraint(equalTo: logoVK.bottomAnchor, constant: 120),
            infoLogin.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            infoLogin.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            infoLogin.heightAnchor.constraint(equalToConstant: 50),
            
            infoPassword.bottomAnchor.constraint(equalTo: infoLogin.bottomAnchor, constant: 50),
            infoPassword.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            infoPassword.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            infoPassword.heightAnchor.constraint(equalToConstant: 50),
            
            logIn.bottomAnchor.constraint(equalTo: infoPassword.bottomAnchor, constant: 66),
            logIn.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            logIn.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            logIn.heightAnchor.constraint(equalToConstant: 50),
            
            textLogIn.bottomAnchor.constraint(equalTo: logIn.bottomAnchor, constant: 3),
            textLogIn.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 170),
            textLogIn.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            textLogIn.heightAnchor.constraint(equalToConstant: 50),
            

        ])
    }}
