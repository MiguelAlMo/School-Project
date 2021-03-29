//
//  UIViewExtension.swift
//  MidiOS
//
//  Created by David Jardon on 09/02/21.
//

import UIKit

extension UIView {
    
    // Añadimos esta función a cualquier View
    func showShadow(opacity: Float = 0.4,
                    color: CGColor = UIColor.gray.cgColor,
                    offset: CGSize = CGSize.zero) {
        layer.shadowColor = color
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
    }
}
