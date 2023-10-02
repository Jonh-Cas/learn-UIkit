//
//  ViewController.swift
//  UIkit-Navigation-Push
//
//  Created by Jonathan Casillas on 28/09/23.
//

import UIKit

class ViewControllerA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        title = "View Controller A"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Next", style: .done, target: self, action: #selector(nextViewController))
        // Do any additional setup after loading the view.
    }
    
    @objc
    private func nextViewController(){
        self.navigationController?.pushViewController(ViewControllerB(), animated: true)
    }


}

