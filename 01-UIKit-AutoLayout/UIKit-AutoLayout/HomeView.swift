//
//  HomeView.swift
//  UIKit-AutoLayout
//
//  Created by Jonathan Casillas on 22/08/23.
//

import Foundation
import UIKit


final class HomeView: UIView {
    
    private let imageRickView: UIImageView = {
        let imageRick = UIImageView()
        imageRick.contentMode = .scaleAspectFit
        imageRick.image = UIImage(named: "rickandmorty")
        imageRick.translatesAutoresizingMaskIntoConstraints = false
        
        return imageRick
    }()
    
    private let textLabel: UILabel =  {
        let text = UILabel()
        text.numberOfLines = 0
        text.textAlignment = .center
        text.text = "Hola a la aplicacion de Rick y Morty"
        text.font = UIFont(name: "Arial Rounded MT Bold", size: 20)
        text.translatesAutoresizingMaskIntoConstraints  = false
        
        return text
        
    }()
    
    private lazy var button: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title  = "Press Button"
        config.subtitle = "✌️"
        
        
        let button =  UIButton(type: .system)
        button.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        addSubView()
        configConstraints()
    }
    
    func addSubView (){
        [ imageRickView, textLabel, button ].forEach(addSubview)
    }
    
    func configConstraints () {
        NSLayoutConstraint.activate([

            imageRickView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageRickView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageRickView.bottomAnchor.constraint(equalTo: textLabel.topAnchor, constant: -40),
            
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            textLabel.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -40),
            
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
    @objc func showMessage (){
        print("hola mundo ")
    }
    
    
}
