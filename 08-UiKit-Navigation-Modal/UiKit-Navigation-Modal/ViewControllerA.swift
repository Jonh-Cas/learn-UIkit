//
//  ViewController.swift
//  UiKit-Navigation-Modal
//
//  Created by Jonathan Casillas on 28/09/23.
//

import UIKit

class ViewControllerA: UIViewController {
    
    private lazy var buttonModal: UIButton = {
        var config = UIButton.Configuration.bordered()
        config.title = "PresentView Controller A"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.startNavigation()
        }) )
        
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .green
        view.addSubview(buttonModal)
        
        NSLayoutConstraint.activate([
            buttonModal.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonModal.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        
    }

    func startNavigation () {
        present(ViewControllerB(), animated: true)
    }
    
}

