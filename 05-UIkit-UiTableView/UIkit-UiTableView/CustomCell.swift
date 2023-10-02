//
//  CustomCell.swift
//  UIkit-UiTableView
//
//  Created by Jonathan Casillas on 23/08/23.
//

import UIKit

class CustomCell: UITableViewCell {
    
    private let deviceImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let deviceLabel: UILabel = {
       let  label = UILabel()
        label.text = ""
        label.font = .systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(deviceImageView)
        addSubview(deviceLabel)
        
        NSLayoutConstraint.activate([
            deviceImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            deviceImageView.topAnchor.constraint(equalTo:  topAnchor, constant: 12),
            deviceImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant:  -12),
            deviceImageView.widthAnchor.constraint(equalToConstant: 40),
            
            deviceLabel.leadingAnchor.constraint(equalTo: deviceImageView.trailingAnchor, constant: 20),
            deviceLabel.centerYAnchor.constraint(equalTo: deviceImageView.centerYAnchor),
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure (model: Device){
        deviceImageView.image = UIImage(systemName: model.imageName)
        deviceLabel.text = model.title
    }


}
