//
//  VideoCell.swift
//  Youtube2.0
//
//  Created by Ronald Hernandez on 1/27/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

class VideoCell: UICollectionViewCell {

    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .yellow
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let userProfileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .green
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let titleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .purple
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let subtitleTextView: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .blue
        textView.translatesAutoresizingMaskIntoConstraints = false
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
        subtitleTextView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8).isActive = true
        subtitleTextView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 8).isActive = true
        subtitleTextView.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
}
