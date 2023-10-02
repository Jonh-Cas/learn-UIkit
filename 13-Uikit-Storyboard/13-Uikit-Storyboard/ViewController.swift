//
//  ViewController.swift
//  13-Uikit-Storyboard
//
//  Created by Jonathan Casillas on 29/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swiftButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController2 = storyboard.instantiateViewController(withIdentifier: "ViewController2_identifier")
        self.present(viewController2, animated: true)
    }
    
}

