//
//  ViewControllerC.swift
//  UiKit-Navigation-Modal
//
//  Created by Jonathan Casillas on 28/09/23.
//

import UIKit

class ViewControllerC: UIViewController {
    
    private lazy var dissmisbutton: UIButton = {
        var  config = UIButton.Configuration.bordered()
        config.title = "Present View Controller C"
        
        let button = UIButton( type: .system, primaryAction: UIAction(handler: { _ in
            self.dissmisControllerC()
        }))
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        view.addSubview(dissmisbutton)
        
        NSLayoutConstraint.activate([
            dissmisbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dissmisbutton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
    }
    
    func dissmisControllerC(){
        dismiss(animated: true) {
            print("dismiss Modal")
        }
    }
    
}
