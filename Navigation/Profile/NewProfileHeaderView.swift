//
//  NewProfileHeaderView.swift
//  Navigation
//
//  Created by Даниил Сокол on 13.03.2022.
//

import Foundation
import UIKit

class NewProfileHeaderView : UIViewController {
    
    private let newView: UIView = {
        let view = UIView()
       view.translatesAutoresizingMaskIntoConstraints = false
       return view
   }()
    
private let avatarImageView : UIImageView = {
    let avatar = UIImageView()
    avatar.image = UIImage(named: "055")
    avatar.translatesAutoresizingMaskIntoConstraints = false
    avatar.layer.borderColor = UIColor.white.cgColor
    avatar.layer.borderWidth = 3
    avatar.layer.cornerRadius = 60
    avatar.clipsToBounds = true
    return avatar
}()

private let fullNameLabel :  UILabel = {
    let label = UILabel()
    label.text = "Hipster Cat"
    label.textColor = .black
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
    return label
}()

private let statusLabel : UILabel = {
   let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
    label.textColor = .gray 
    label.text = "Waiting for something..."
    return label
}()
    
    private let setStatusButton : UIButton = {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 250, height: 75))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.shadowOffset.width = 4
        button.layer.shadowOffset.height = 4
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.layer.cornerRadius = 14
        button.addTarget(NewProfileViewController.self, action: #selector(pressStatusButton), for: .touchUpInside)
        return button
    }()
    
    private let statusTextField: UITextField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
            textField.tintColor = .black
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.black.cgColor
            textField.layer.cornerRadius = 12
            textField.backgroundColor = .white
            textField.textAlignment = .center
            textField.placeholder = "Change status"
            
        textField.addTarget(NewProfileViewController.self, action: #selector(statusTextChanged), for: .editingChanged)
            
            return textField
        }()
    private var statusText: String = ""
    
    @objc func pressStatusButton() {
            statusLabel.text = statusTextField.text
            print(statusLabel.text ?? "Non")
            print(statusText)
        
        }
    
    @objc func statusTextChanged(_ textField: UITextField) {
            if let text = textField.text{
                statusText = text
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(avatarImageView)
        view.addSubview(fullNameLabel)
        view.addSubview(statusLabel)
        view.addSubview(statusTextField)
        view.addSubview(setStatusButton)
    
        NSLayoutConstraint.activate([
        avatarImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
        avatarImageView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
        avatarImageView.widthAnchor.constraint(equalToConstant: 130),
        avatarImageView.heightAnchor.constraint(equalToConstant: 130),
        fullNameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 27),
        fullNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 28),
        setStatusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 16),
        setStatusButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        setStatusButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
        setStatusButton.heightAnchor.constraint(equalToConstant: 50),
        statusLabel.topAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -34),
        statusLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 160),
        statusTextField.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -50),
        statusTextField.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 35),
        statusTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
        statusTextField.heightAnchor.constraint(equalToConstant: 40)
        ])  }}
