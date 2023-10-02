//
//  ViewController.swift
//  15-UIkit-Ciclos-de-vida
//
//  Created by Jonathan Casillas on 01/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    deinit {
        print("🧹")
    }
    
    
    private lazy var swiftButton: UIButton = {
        var config = UIButton.Configuration.bordered()
        config.title = "Press this Button"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { [weak self] action in
            self?.presentCurrentViewController()
        }))
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        self.changeConstrainValue()
        
        return button
        
    }()
    
    var buttonConstrain: NSLayoutConstraint?

    override func viewDidLoad() {
        super.viewDidLoad()
        print("1. viewDidLoad \(self.description) ")
        // Do any additional setup after loading the view.
        view.backgroundColor = [ .systemRed, .systemBlue, .systemCyan, .systemMint, .systemPink, .systemBrown ].randomElement()
        
        view.addSubview(swiftButton)
        
        buttonConstrain = swiftButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        NSLayoutConstraint.activate([
            swiftButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonConstrain!
        ])
        
    }
    
    func presentCurrentViewController(){
        self.present(ViewController(), animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2. viewWillApper \(self.description)")
        
    }
    
    func changeConstrainValue(){
        view.removeConstraint(buttonConstrain!)
        buttonConstrain = swiftButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100)
        NSLayoutConstraint.activate([
            swiftButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonConstrain!
        ])
    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("3. viewWillLayoutSubviewa \(self.description)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("4. viewDidLayoutSubviewa \(self.description)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("5. viewDidAppear \(self.description)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("6. viewWillDissapear \(self.description) ")
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("7. viewDidDisappear \(self.description)")
    }
    
    


}

