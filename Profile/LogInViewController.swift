//
//  LogInViewController.swift
//  Navigation
//
//  Created by Даниил Сокол on 19.03.2022.
//

import Foundation
import UIKit

class LogInViewController : UIViewController{

    
    private let dis: DisProfile = {
        let dis = DisProfile()
        return dis
    }()
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
        view.backgroundColor = .white
        }
    
    override func viewWillLayoutSubviews() {
        dis.frame = self.view.frame
        view.addSubview(dis)
        dis.addConstraints(view: view)
    }
    }

