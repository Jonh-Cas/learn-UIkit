//
//  ViewController.swift
//  Uikit-UILabel
//
//  Created by Jonathan Casillas on 22/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let Label1: UILabel = {
       let label = UILabel()
        label.text = "Este es un label"
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 26)
        label.textColor = .systemIndigo
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    private let Label2: UILabel = {
       let label = UILabel()
        label.text = "Aprendiendo a programar Swift y SwiftUI: Creando apps en xcode y subirlas en la App store"
        label.font = .systemFont(ofSize: 12)
        label.textColor = .black
        label.textAlignment = .left
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    private let Label3: UILabel = {
        let text = "Aprendiendo a programar Swift y SwiftUI: Creando apps en xcode y subirlas en la App store"
        let attributedText: [NSAttributedString.Key: Any ] = [
            .underlineStyle: NSUnderlineStyle.single.rawValue,
            .underlineColor: UIColor.red,
            .foregroundColor: UIColor.white,
            .backgroundColor: UIColor.blue,
            .font: UIFont.systemFont(ofSize: 32)
        ]
        let attributedString = NSAttributedString(string: text,attributes: attributedText )
        
        let label = UILabel()
        label.attributedText  = attributedString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(Label1)
        view.addSubview(Label2)
        view.addSubview(Label3)
        
        NSLayoutConstraint.activate([
            Label1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            Label1.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            
            Label2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            Label2.topAnchor.constraint(equalTo: Label1.bottomAnchor, constant: 12),
            Label2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            Label2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            
            Label3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            Label3.topAnchor.constraint(equalTo: Label2.bottomAnchor, constant: 12),
            Label3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            Label3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32)
            
        ])
        // Do any additional setup after loading the view.
    }


}

