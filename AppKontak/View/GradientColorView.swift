//
//  GradientColorView.swift
//  AppKontak
//
//  Created by macintosh on 28/09/18.
//  Copyright © 2018 Bimo Satriyo. All rights reserved.
//

import UIKit

@IBDesignable
class GradientColorView: UIView {
    
    @IBInspectable var firstColor: UIColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    @IBInspectable var secondColor: UIColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    
    override class var layerClass: AnyClass {
        get {
            return CAGradientLayer.self
        }
    }
    
    func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [firstColor, secondColor].map{$0.cgColor}
    }
    
}

