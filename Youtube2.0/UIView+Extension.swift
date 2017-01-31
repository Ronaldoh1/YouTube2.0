//
//  UIView+Extension.swift
//  Youtube2.0
//
//  Created by Ronald Hernandez on 1/31/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//
import UIKit

extension UIView {

    func addConstraintsWithFormat(_ format: String, views: UIView...) {

        var viewsDictionary = [String : UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }

        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
    
}
