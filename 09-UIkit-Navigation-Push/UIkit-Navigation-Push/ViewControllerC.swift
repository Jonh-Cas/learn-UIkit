//
//  ViewControllerC.swift
//  UIkit-Navigation-Push
//
//  Created by Jonathan Casillas on 28/09/23.
//

import UIKit

class ViewControllerC: UIViewController {
    
    private lazy var button: UIButton = {
        var config = UIButton.Configuration.bordered()
        config.title = "Modal"
        
        let buttonUI = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.startNavigation()
        }))
        buttonUI.configuration = config
        buttonUI.translatesAutoresizingMaskIntoConstraints = false
        
        return buttonUI
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        title = "View Controller C"
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
    }
    
    func startNavigation(){
        
        //Regresa uno antes
        self.navigationController?.popViewController(animated: true)
        
        // Regresa al principio
        //self.navigationController?.popToRootViewController(animated: true)
        
        // Modal
        //self.present(ViewControllerD(), animated: true)
    }
    
}
