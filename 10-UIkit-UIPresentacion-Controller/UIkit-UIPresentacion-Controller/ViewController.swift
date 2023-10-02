//
//  ViewController.swift
//  UIkit-UIPresentacion-Controller
//
//  Created by Jonathan Casillas on 28/09/23.
//

import UIKit

class ViewController: UIViewController {

    private lazy var button: UIButton = {
        var config = UIButton.Configuration.bordered()
        config.title = "Press button..."
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.presentSheetViewController()
        }))
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor  = .orange
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }
    
    func presentSheetViewController(){
        let viewControllerPresent = SheetViewController()
    
        
        present(viewControllerPresent, animated: true)
    }


}

