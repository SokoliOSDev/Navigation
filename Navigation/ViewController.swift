//
//  ViewController.swift
//  collection
//
//  Created by Даниил Сокол on 23.03.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let posts = Post.publications()
    
    private let photosTableView: PhotosTableViewCell = {
        let photosTableView = PhotosTableViewCell()
        return photosTableView
    }()
    
    private let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(PostTableViewCell.self, forCellReuseIdentifier: String(describing: PostTableViewCell.self))
        return table
    }()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        view.addSubview(photosTableView)
        photosTableView.addConstraints(view: view)
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 230),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PostTableViewCell.self), for: indexPath) as! PostTableViewCell
        cell.setupCell(publications: posts[indexPath.row])
        return cell
    }
    
}

