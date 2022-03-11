//
//  FeedViewController.swift
//  Navigation
//
//  Created by Сокол Даниил on 11.03.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    private let postVC = PostViewController()
    

    private let showPostButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 75))
        button.setTitle("Show post", for: .normal)
        button.layer.cornerRadius = 18
        button.backgroundColor = .systemTeal
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        title = "Feed"
        
        view.addSubview(showPostButton)
        
        showPostButton.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        showPostButton.center = view.center
    }
    
    @objc func showPost(){
        let navVC = UINavigationController(rootViewController: postVC)
        navVC.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(postVC, animated: true)
        
    }

}
