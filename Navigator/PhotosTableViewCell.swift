//
//  PhotosTableViewCell.swift
//  collection
//
//  Created by Даниил Сокол on 23.03.2022.
//

import Foundation
import UIKit

class PhotosTableViewCell : UITableViewCell {
    
   
    
    let fon : UIView = {
        let fonNew = UIView()
        fonNew.translatesAutoresizingMaskIntoConstraints = false
        fonNew.backgroundColor = .white
        return fonNew
    }()
    
    let textImage : UILabel = {
        let text = UILabel()
        text.text = "Photos"
        text.tintColor = .black
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        return text
    }()
    
    let fotoOne : UIImageView = {
        let foto = UIImageView()
        foto.image = UIImage(named: "1")
        foto.translatesAutoresizingMaskIntoConstraints = false
        foto.layer.cornerRadius = 6
        foto.clipsToBounds = true
        return foto
    }()
    
    let fotoTwo : UIImageView = {
        let foto = UIImageView()
        foto.image = UIImage(named: "2")
        foto.translatesAutoresizingMaskIntoConstraints = false
        foto.layer.cornerRadius = 6
        foto.clipsToBounds = true
        return foto
    }()
    
    let fotoThree : UIImageView = {
        let foto = UIImageView()
        foto.image = UIImage(named: "3")
        foto.translatesAutoresizingMaskIntoConstraints = false
        foto.layer.cornerRadius = 6
        foto.clipsToBounds = true
        return foto
    }()
    
    let fotoFour : UIImageView = {
        let foto = UIImageView()
        foto.image = UIImage(named: "4")
        foto.translatesAutoresizingMaskIntoConstraints = false
        foto.layer.cornerRadius = 6
        foto.clipsToBounds = true
        return foto
    }()
    
    let rightImage : UIImageView = {
        let foto = UIImageView()
        foto.image = UIImage(named: "full_image")
        foto.translatesAutoresizingMaskIntoConstraints = false
        return foto
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
    
    func addConstraints(view: UIView) {
        
        [fon, textImage, fotoTwo, fotoThree, fotoFour, fotoOne, rightImage, avatarImageView, fullNameLabel, statusLabel, statusTextField, setStatusButton].forEach{ addSubview($0) }
        
        NSLayoutConstraint.activate([
            fon.topAnchor.constraint(equalTo: setStatusButton.safeAreaLayoutGuide.bottomAnchor, constant: 20),
            fon.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0),
            fon.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            fon.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            fon.bottomAnchor.constraint(equalTo: fotoOne.safeAreaLayoutGuide.bottomAnchor, constant: 12),
            
            textImage.topAnchor.constraint(equalTo: fon.safeAreaLayoutGuide.topAnchor, constant: 12),
            textImage.leftAnchor.constraint(equalTo: fon.safeAreaLayoutGuide.leftAnchor, constant: 12),
            
            fotoOne.topAnchor.constraint(equalTo: textImage.safeAreaLayoutGuide.topAnchor, constant: 40),
            fotoOne.leftAnchor.constraint(equalTo: fon.safeAreaLayoutGuide.leftAnchor, constant: 12),
            fotoOne.widthAnchor.constraint(equalToConstant: 90),
            fotoOne.heightAnchor.constraint(equalToConstant: 70),
            
            fotoTwo.topAnchor.constraint(equalTo: textImage.safeAreaLayoutGuide.topAnchor, constant: 40),
            fotoTwo.leadingAnchor.constraint(equalTo: fotoOne.safeAreaLayoutGuide.leadingAnchor, constant: 94),
            fotoTwo.widthAnchor.constraint(equalToConstant: 90),
            fotoTwo.heightAnchor.constraint(equalToConstant: 70),
            
            fotoThree.topAnchor.constraint(equalTo: textImage.safeAreaLayoutGuide.topAnchor, constant: 40),
            fotoThree.rightAnchor.constraint(equalTo: fotoTwo.safeAreaLayoutGuide.rightAnchor, constant: 94),
            fotoThree.widthAnchor.constraint(equalToConstant: 90),
            fotoThree.heightAnchor.constraint(equalToConstant: 70),
            
            fotoFour.topAnchor.constraint(equalTo: textImage.safeAreaLayoutGuide.topAnchor, constant: 40),
            fotoFour.rightAnchor.constraint(equalTo: fotoThree.safeAreaLayoutGuide.rightAnchor, constant: 94),
            fotoFour.widthAnchor.constraint(equalToConstant: 90),
            fotoFour.heightAnchor.constraint(equalToConstant: 70),
            
            rightImage.centerYAnchor.constraint(equalTo: textImage.safeAreaLayoutGuide.centerYAnchor, constant: 0),
            rightImage.rightAnchor.constraint(equalTo: fotoFour.safeAreaLayoutGuide.rightAnchor, constant: -12),
            rightImage.widthAnchor.constraint(equalToConstant: 20),
            rightImage.heightAnchor.constraint(equalToConstant: 20),
            
            //pressButton.centerYAnchor.constraint(equalTo: textImage.safeAreaLayoutGuide.centerYAnchor, constant: 0),
           // pressButton.rightAnchor.constraint(equalTo: //fotoFour.safeAreaLayoutGuide.rightAnchor, constant: -12),
            //pressButton.widthAnchor.constraint(equalToConstant: 20),
           // pressButton.heightAnchor.constraint(equalToConstant: 20),
            
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
            
            statusLabel.leftAnchor.constraint(equalTo: fullNameLabel.leftAnchor, constant: 0),
            statusLabel.bottomAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 30),
            
            statusTextField.leftAnchor.constraint(equalTo: statusLabel.leftAnchor, constant: 0),
            statusTextField.bottomAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 60),
            statusTextField.heightAnchor.constraint(equalToConstant: 38),
            statusTextField.widthAnchor.constraint(equalToConstant: 130)
            
            
        ])
    }
}
