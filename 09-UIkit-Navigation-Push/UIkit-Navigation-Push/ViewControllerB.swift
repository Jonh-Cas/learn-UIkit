//
//  ViewControllerB.swift
//  UIkit-Navigation-Push
//
//  Created by Jonathan Casillas on 28/09/23.
//

import UIKit

class ViewControllerB: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        title = "View Controller B"
        
 
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Next", style: .done, target: self, action: #selector(nextViewController))
        // Do any additional setup after loading the view.
    }
    
    @objc
    private func nextViewController(){
        self.navigationController?.pushViewController(ViewControllerC(), animated: true)
    }


}
