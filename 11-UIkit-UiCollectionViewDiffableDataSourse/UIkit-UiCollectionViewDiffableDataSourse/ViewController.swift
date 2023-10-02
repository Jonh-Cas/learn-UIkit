//
//  ViewController.swift
//  UIkit-UiCollectionViewDiffableDataSourse
//
//  Created by Jonathan Casillas on 28/09/23.
//

import UIKit

struct Device: Hashable {
    let id = UUID()
    let title: String
    let imageName: String
}

let home = [
    Device(title: "Laptop", imageName: "laptopcomputer"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Mac Pro", imageName: "macpro.gen3"),
    Device(title: "Pantallas", imageName: "display.2"),
    Device(title: "Apple TV", imageName: "appletv"),
    
]

let office = [
    Device(title: "Laptop", imageName: "laptopcomputer"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Mac Pro", imageName: "macpro.gen3"),
    Device(title: "Pantallas", imageName: "display.2"),
    Device(title: "Apple TV", imageName: "appletv"),
    
]


class ViewController: UIViewController {
    
     lazy var swiftCollecttionView : UICollectionView = {
        let config = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
        let layout = UICollectionViewCompositionalLayout.list(using: config)
        
        let colectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        colectionView.translatesAutoresizingMaskIntoConstraints = false
        return colectionView
        
    }()
    
    lazy var datasource: UICollectionViewDiffableDataSource <Int, Device> = {
        let deviceCell = UICollectionView.CellRegistration<UICollectionViewCell, Device> { cell, indexPath, model in
            var listContentConfiguration = UIListContentConfiguration.cell()
            listContentConfiguration.text = model.title
            listContentConfiguration.image = UIImage(systemName: model.imageName)
            cell.contentConfiguration = listContentConfiguration
            
        }
        
        let datasourse = UICollectionViewDiffableDataSource<Int, Device>(collectionView: swiftCollecttionView) { collectionView, indexPath, model in
            
            return collectionView.dequeueConfiguredReusableCell(using: deviceCell, for: indexPath, item: model)
        }
        
        return datasourse
        
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        swiftCollecttionView.backgroundColor = .green
        view.addSubview(swiftCollecttionView)
        
        NSLayoutConstraint.activate([
            swiftCollecttionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            swiftCollecttionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            swiftCollecttionView.topAnchor.constraint(equalTo: view.topAnchor),
            swiftCollecttionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    
        
        var snapshot = datasource.snapshot()
        snapshot.appendSections([0, 1])
        snapshot.appendItems(home, toSection: 0)
        snapshot.appendItems(office, toSection: 1)
        datasource.apply(snapshot)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            snapshot.appendItems([.init(title: "New Device", imageName: "appletv") ], toSection: 0)
            snapshot.appendItems([.init(title: "New Device 2", imageName: "appletv") ], toSection: 0)
            self.datasource.apply(snapshot)
        }
        
    }


}

