//
//  ViewController.swift
//  Uikit-UiCollectionView
//
//  Created by Jonathan Casillas on 22/09/23.
//

import UIKit

struct Device {
    let title: String
    let imageName: String
    
}

let house = [
    Device(title: "Latop", imageName: "laptopcomputer"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Mac Pro", imageName: "macpro.gen3"),
    Device(title: "Pantallas", imageName: "display.2"),
    Device(title: "Apple TV", imageName: "appletv"),
    Device(title: "Latop", imageName: "laptopcomputer"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Mac Pro", imageName: "macpro.gen3"),
    Device(title: "Pantallas", imageName: "display.2"),
    Device(title: "Apple TV", imageName: "appletv"),
    Device(title: "Latop", imageName: "laptopcomputer"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Mac Pro", imageName: "macpro.gen3"),
    Device(title: "Pantallas", imageName: "display.2"),
    Device(title: "Apple TV", imageName: "appletv"),
    Device(title: "Latop", imageName: "laptopcomputer"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Mac Pro", imageName: "macpro.gen3"),
    Device(title: "Pantallas", imageName: "display.2"),
    Device(title: "Apple TV", imageName: "appletv"),
    Device(title: "Latop", imageName: "laptopcomputer"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Mac Pro", imageName: "macpro.gen3"),
    Device(title: "Pantallas", imageName: "display.2"),
    Device(title: "Apple TV", imageName: "appletv"),
]

class ViewController: UIViewController, UICollectionViewDataSource {

    
    
    private let customCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: 200, height: 60)
        layout.scrollDirection = .vertical
        //layout.minimumLineSpacing = 200
        //layout.minimumInteritemSpacing = 200
        
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
            
        customCollectionView.backgroundColor = .blue
        customCollectionView.dataSource = self
        customCollectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "CustomCollectionViewCell")
        view.addSubview(customCollectionView)
        
        NSLayoutConstraint.activate([
            customCollectionView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            customCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            customCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            customCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        house.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as! CustomCollectionViewCell
               
        
                let model = house[indexPath.row]
                
        cell.configure(model: model)
        
                return cell
        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UICollectionViewCell", for: indexPath)
//        cell.backgroundColor = .red
//
//        let model = house[indexPath.row]
//        var listContentConfiguration = UIListContentConfiguration.cell()
//        listContentConfiguration.text = model.title
//        listContentConfiguration.image = UIImage(systemName: model.imageName)
//
//        cell.contentConfiguration = listContentConfiguration
//
//        return cell
    }


}

