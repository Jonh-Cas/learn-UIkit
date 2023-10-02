//
//  ViewController.swift
//  Uikit-UIStackView
//
//  Created by Jonathan Casillas on 26/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let textLabel: UILabel = {
        let text = UILabel()
        text.text = "🤌 App de suscripción 🤌"
        text.textAlignment = .center
        text.numberOfLines = 0
        text.font = .systemFont(ofSize: 32)
        text.translatesAutoresizingMaskIntoConstraints = false
        
        return text
    }()
    
    
    private let stackView: UIStackView = {
      let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 12
        //stack.alignment = .leading
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textLabel)
        view.addSubview(stackView)

        NSLayoutConstraint.activate( [
            textLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            textLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
          
            stackView.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 32),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        
        
        
        ["1.50$", "20.99$", "30.00$", "24.99$"].forEach { price in
            let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
                self.buttonAction(price: price)
            }))
            var config = UIButton.Configuration.borderedTinted()
            config.title = price
            config.subtitle = "Subscripción"
            config.image = UIImage(systemName: "dollarsign.circle")
            config.baseBackgroundColor = .green
            config.imagePadding = 12
            button.configuration = config
            
            stackView.addArrangedSubview(button)
        }
        
        // Do any additional setup after loading the view.
    }
    

    func buttonAction (price: String) {
        print("El precio es de \(price) pesos")
    }

}

