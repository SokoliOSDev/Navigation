//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Даниил Сокол on 11.03.2022.
//

import UIKit

class NewProfileViewController: UIViewController {
    
      private let newProfile: NewProfileHeaderView = {
        let newProfile = NewProfileHeaderView()
       return newProfile
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4
        title = "Profile"
    }
    
}
