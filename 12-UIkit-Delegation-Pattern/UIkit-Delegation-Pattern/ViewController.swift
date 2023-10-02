//
//  ViewController.swift
//  UIkit-Delegation-Pattern
//
//  Created by Jonathan Casillas on 29/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    let apiClient = APIClient()
    
    private let nameLabel: UILabel = {
      let label = UILabel()
        label.numberOfLines = 2
        label.textAlignment = .center
        label.text = "placeholder"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    private lazy var acceptButton: UIButton = {
        var config = UIButton.Configuration.bordered()
        config.title = " Hacer peticion http"
        
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { [weak self] _ in
            self?.didTapOnAcceptButton()
        }))
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
        
    }()
    
    private lazy var presentViewController2Button: UIButton = {
        var config = UIButton.Configuration.bordered()
        config.title = "Present ViewController 2"
        
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { [weak self] _ in
            self?.didTapOnPresentViewController2Button()
        }))
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
        
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(nameLabel)
        view.addSubview(acceptButton)
        view.addSubview(presentViewController2Button)
        apiClient.delegate = self
        
        NSLayoutConstraint.activate([
            nameLabel.bottomAnchor.constraint(equalTo: acceptButton.topAnchor, constant: -32),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            acceptButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            acceptButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            presentViewController2Button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            presentViewController2Button.centerYAnchor.constraint(equalTo: acceptButton.bottomAnchor, constant: 32),
        ])
        
        
    }
    
    func didTapOnAcceptButton() {
        apiClient.getPokemons()
    }
    
    func didTapOnPresentViewController2Button () {
        present(ViewController2(), animated: true)
    }

}

extension ViewController: APIClientDelegation {
    func update(pokemons: PokemonResponseDataModel) {
        DispatchQueue.main.async {
            self.nameLabel.text = pokemons.pokemons.randomElement()?.name
        }
    }
}

