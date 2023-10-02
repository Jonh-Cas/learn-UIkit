//
//  CustomView.swift
//  13-Uikit-Storyboard
//
//  Created by Jonathan Casillas on 29/09/23.
//

import UIKit

@IBDesignable
class CustomView: UIView {
    
    @IBInspectable
    var swiftBackgroundColor: UIColor = .blue {
        didSet {
            backgroundColor = swiftBackgroundColor
        }
    }
    
    @IBInspectable
    var swiftBorderWidth: CGFloat = 10.0 {
        didSet {
            layer.borderWidth = swiftBorderWidth
        }
    }
    
    override func prepareForInterfaceBuilder() {
        backgroundColor = swiftBackgroundColor
        layer.borderWidth = swiftBorderWidth
    }

}
