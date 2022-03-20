//
//  PostViewController.swift
//  Navigation
//
//  Created by Сокол Даниил on 11.03.2022.
//
import UIKit

class PostViewController: UIViewController {

    private let infoVC = InfoViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemIndigo
        title = "Post"

        let infoButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(showInfo))
        self.navigationItem.rightBarButtonItem = infoButton
    }


    @objc func showInfo() {
        present(infoVC, animated: true)
    }

}
