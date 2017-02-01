//
//  MenuCell.swift
//  Youtube2.0
//
//  Created by Ronald Hernandez on 2/1/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

class MenuCell: BaseCell {

    override var isHighlighted: Bool {
        didSet{
            menuButtonImage.tintColor = isHighlighted ? .white : UIColor.rgb(red: 91, green: 14, blue: 13)
        }
    }

    override var isSelected: Bool {
        didSet {
            menuButtonImage.tintColor = isSelected ? .white : UIColor.rgb(red: 91, green: 14, blue: 13)
        }
    }

    let menuButtonImage: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = #imageLiteral(resourceName: "home").withRenderingMode(.alwaysTemplate)
        iv.tintColor = UIColor.rgb(red: 91, green: 14, blue: 13)
        return iv
    }()

    override func setupViews() {
        super.setupViews()
        addSubview(menuButtonImage)
        menuButtonImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        menuButtonImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        menuButtonImage.heightAnchor.constraint(equalToConstant: 28).isActive = true
        menuButtonImage.widthAnchor.constraint(equalToConstant: 28).isActive = true
    }

}
