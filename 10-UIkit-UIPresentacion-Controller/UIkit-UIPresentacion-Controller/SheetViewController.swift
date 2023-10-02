//
//  SheetViewController.swift
//  UIkit-UIPresentacion-Controller
//
//  Created by Jonathan Casillas on 28/09/23.
//

import UIKit

class SheetViewController: UIViewController {
    
    private let label: UILabel = {
       let uiLabel = UILabel()
        uiLabel.text = "Este es un titulo"
        uiLabel.font = .systemFont(ofSize: 32)
        uiLabel.textColor = . white
        uiLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return uiLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        
        guard let presentationController = presentationController as? UISheetPresentationController
        else { return }
            presentationController.detents = [ .medium(), .large() ]
            presentationController.selectedDetentIdentifier = .medium
            presentationController.prefersGrabberVisible = true
            presentationController.preferredCornerRadius = 20
        
        
    }
    
}
