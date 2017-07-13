//
//  ViewController.swift
//  mymvcapp
//
//  Created by macbook on 13.07.17.
//  Copyright © 2017 zaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.rowHeight = 30
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: "cellId")
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        configureConstraints()
    }
    
    func configureViews() {
        view.backgroundColor = .red
        view.addSubview(tableView)
    }
    
    func configureConstraints() {
        tableView <- [
            Top =
        ]
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! MainTableViewCell
        cell.textLabel?.text = "ZAKA"
        return cell
    }
    
    
}

