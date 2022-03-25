//
//  ViewController.swift
//  collection
//
//  Created by Даниил Сокол on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    let inTouch = OpenWindowTouchButton()
    
    private let photosTableView: PhotosTableViewCell = {
        let photosTableView = PhotosTableViewCell()
        return photosTableView
    }()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = .systemGray2
        view.addSubview(pressButton)
        view.addSubview(photosTableView)
        photosTableView.addConstraints(view: view)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pressButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 240).isActive = true
        pressButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -12).isActive = true
    }
    
    
    private lazy var pressButton : UIButton = {
        let pressButton = UIButton(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        pressButton.backgroundColor = .green
        pressButton.addTarget(self, action: #selector(touchButton), for: .touchUpInside)
        pressButton.translatesAutoresizingMaskIntoConstraints = false
        return pressButton
    }()
    
    @objc func touchButton() {
        let pressTouch = OpenWindowTouchButton()
        present(pressTouch, animated: true)
    }
}

