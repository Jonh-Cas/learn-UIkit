//
//  ViewController.swift
//  14-UIkit-Xibs
//
//  Created by Jonathan Casillas on 30/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton(){
        let viewController2 = ViewController2(nibName: "ViewController2", bundle: nil)
        self.present(viewController2, animated: true)
    }

}

