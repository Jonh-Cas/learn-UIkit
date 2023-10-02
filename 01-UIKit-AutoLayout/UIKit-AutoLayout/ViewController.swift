//
//  ViewController.swift
//  UIKit-AutoLayout
//
//  Created by Jonathan Casillas on 22/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        self.view  = HomeView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

    }
    

}

