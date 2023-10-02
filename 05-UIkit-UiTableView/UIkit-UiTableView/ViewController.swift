//
//  ViewController.swift
//  UIkit-UiTableView
//
//  Created by Jonathan Casillas on 23/08/23.
//

import UIKit

struct Device {
    let title: String
    let imageName: String
}


class ViewController: UIViewController {
    
    private var dataSource: TableViewDataSorce?
    private var delegate: TableViewDelegate?
    
    override func loadView() {
        let tableView = UITableView()
        
        self.dataSource = TableViewDataSorce(dataSource: allMyDevices)
        self.delegate = TableViewDelegate()
        tableView.dataSource = dataSource
        tableView.delegate = delegate
        tableView.register(CustomCell.self, forCellReuseIdentifier: "CustomCell")
        view = tableView
    }
    

}

