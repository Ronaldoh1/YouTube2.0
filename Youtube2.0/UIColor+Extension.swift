//
//  UIColor+Extension.swift
//  Youtube2.0
//
//  Created by Ronald Hernandez on 1/31/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//
import UIKit

extension UIColor {

    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }

}
