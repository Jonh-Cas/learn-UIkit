//
//  ViewController.swift
//  UiKit-UIButton
//
//  Created by Jonathan Casillas on 22/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let BlueButtton1: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Este es el Titulo"
        config.subtitle = "Este es un Subtitle"
        config.image = UIImage(systemName: "play.circle.fill")
        
        
        let button = UIButton(type: .system)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    private let BlueButtton2: UIButton = {
        var config = UIButton.Configuration.bordered()
        config.title = "Este es el Titulo"
        config.subtitle = "Este es un Subtitle"
        config.image = UIImage(systemName: "play.circle.fill")
        config.imagePadding = 12
        config.imagePlacement = .trailing
        
        
        let button = UIButton(type: .system)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    private let BlueButtton3: UIButton = {
        var config = UIButton.Configuration.bordered()
        config.title = "Este es el Titulo"
        config.subtitle = "Este es un Subtitle"
        config.image = UIImage(systemName: "play.circle.fill")
        config.imagePadding = 12
        config.imagePlacement = .trailing
        config.buttonSize = .large
        config.baseBackgroundColor = .systemCyan
        config.baseForegroundColor = .black
        
        
        let button = UIButton(type: .system)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    private lazy var BlueButtton4: UIButton = {
        var config = UIButton.Configuration.bordered()
        config.title = "Este es el Titulo"
        config.subtitle = "Este es un Subtitle"
        config.image = UIImage(systemName: "play.circle.fill")
        config.imagePadding = 12
        config.imagePlacement = .trailing
        config.buttonSize = .large
        config.baseBackgroundColor = .systemCyan
        config.baseForegroundColor = .black
        
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.showMessage()
        }))
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(BlueButtton1)
        view.addSubview(BlueButtton2)
        view.addSubview(BlueButtton3)
        view.addSubview(BlueButtton4)
        
        NSLayoutConstraint.activate([
            BlueButtton1.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            BlueButtton1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            BlueButtton2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            BlueButtton2.topAnchor.constraint(equalTo: BlueButtton1.bottomAnchor, constant: 10),
            
            BlueButtton3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            BlueButtton3.topAnchor.constraint(equalTo: BlueButtton2.bottomAnchor, constant: 10),
            
            BlueButtton4.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            BlueButtton4.topAnchor.constraint(equalTo: BlueButtton3.bottomAnchor, constant: 10)
        ])
        // Do any additional setup after loading the view.
    }
    
    func showMessage() {
        print("Hola mundo!!")
    }


}

