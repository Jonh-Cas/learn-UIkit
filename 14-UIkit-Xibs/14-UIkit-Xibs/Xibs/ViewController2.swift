//
//  ViewController2.swift
//  14-UIkit-Xibs
//
//  Created by Jonathan Casillas on 30/09/23.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func navigaterToViewController3(_ sender: Any) {
            let viewController3 = ViewController3(nibName: "ViewController3", bundle: nil)
        self.present(viewController3, animated: true)
    }
 

}
