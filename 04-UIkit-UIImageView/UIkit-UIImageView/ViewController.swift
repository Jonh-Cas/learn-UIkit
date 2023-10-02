//
//  ViewController.swift
//  UIkit-UIImageView
//
//  Created by Jonathan Casillas on 22/08/23.
//

import UIKit

class ViewController: UIViewController {
    

    private let image1: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(systemName: "gamecontroller.fill")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .purple
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 150
        imageView.layer.borderWidth = 10
        imageView.layer.borderColor = UIColor.green.cgColor
        
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(image1)
        
        NSLayoutConstraint.activate([
            image1.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            image1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image1.widthAnchor.constraint(equalToConstant: 300),
            image1.heightAnchor.constraint(equalToConstant: 300),
        ])
        
        // Do any additional setup after loading the view.
    }


}

