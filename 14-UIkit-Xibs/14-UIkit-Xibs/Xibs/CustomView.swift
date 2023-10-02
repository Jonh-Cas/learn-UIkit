//
//  CustomView.swift
//  14-UIkit-Xibs
//
//  Created by Jonathan Casillas on 30/09/23.
//

import UIKit

class CustomView: UIView {

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        let nib = UINib(nibName: "CustomView", bundle: nil)
        guard let customView = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            fatalError("Error instantiating CustomView ")
        }
        addSubview(customView)
    }

}
