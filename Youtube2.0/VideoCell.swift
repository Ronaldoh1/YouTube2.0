//
//  VideoCell.swift
//  Youtube2.0
//
//  Created by Ronald Hernandez on 1/27/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

class VideoCell: UICollectionViewCell {

    fileprivate let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .yellow
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = #imageLiteral(resourceName: "blankspace")
        return imageView
    }()

    fileprivate let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    fileprivate let userProfileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = #imageLiteral(resourceName: "taylor")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()

    fileprivate let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Taylor Swift - Blank Space"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    fileprivate let subtitleTextView: UITextView = {
        let textView = UITextView()
        textView.text = "TaylorSwiftVEVO - 1,602,684,607 • 2 years ago"
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textContainerInset = UIEdgeInsetsMake(0, -4, 0, 0)
        return textView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {

        addSubview(thumbnailImageView)
        thumbnailImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        thumbnailImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16).isActive = true
        thumbnailImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16).isActive = true

        addSubview(separatorView)
        separatorView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        separatorView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        separatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        separatorView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

        addSubview(userProfileImageView)
        userProfileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        userProfileImageView.topAnchor.constraint(equalTo: thumbnailImageView.bottomAnchor, constant: 8).isActive = true
        userProfileImageView.heightAnchor.constraint(equalToConstant: 44).isActive = true
        userProfileImageView.widthAnchor.constraint(equalToConstant: 44).isActive = true
        userProfileImageView.bottomAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: -15).isActive = true

        addSubview(titleLabel)

        titleLabel.leftAnchor.constraint(equalTo: userProfileImageView.rightAnchor, constant: 8).isActive = true
        titleLabel.topAnchor.constraint(equalTo: thumbnailImageView.bottomAnchor, constant: 8).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 16).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true

        addSubview(subtitleTextView)

        subtitleTextView.leftAnchor.constraint(equalTo: userProfileImageView.rightAnchor, constant: 8).isActive = true
        subtitleTextView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4).isActive = true
        subtitleTextView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 8).isActive = true
        subtitleTextView.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
}
