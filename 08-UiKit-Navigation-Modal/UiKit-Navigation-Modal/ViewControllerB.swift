//
//  ViewControllerB.swift
//  UiKit-Navigation-Modal
//
//  Created by Jonathan Casillas on 28/09/23.
//

import UIKit

class ViewControllerB: UIViewController {
    
    private lazy var dissmisbutton: UIButton = {
        var  config = UIButton.Configuration.bordered()
        config.title = "dismiss View Controller B"
        
        let button = UIButton( type: .system, primaryAction: UIAction(handler: { _ in
            self.dissmisControllerB()
        }))
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var buttonModal: UIButton = {
        var config = UIButton.Configuration.bordered()
        config.title = "PresentView Controller C"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.startNavigation()
        }) )
        
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(dissmisbutton)
        view.addSubview(buttonModal)
        
        NSLayoutConstraint.activate([
            dissmisbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dissmisbutton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            buttonModal.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonModal.bottomAnchor.constraint(equalTo: dissmisbutton.topAnchor, constant: -32)
        ])
        
    }
    
    func startNavigation(){
        present(ViewControllerC(), animated: true)
    }
    
    func dissmisControllerB(){
        dismiss(animated: true) {
            print("dismiss Modal")
        }
    }
    
}
