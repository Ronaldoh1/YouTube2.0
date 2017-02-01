//
//  HomeViewController.swift
//  Youtube2.0
//
//  Created by Ronald Hernandez on 1/27/17.
//  Copyright © 2017 Ronaldoh1. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController {

    fileprivate let  homeCellID = "home"

     let menuBar: MenuBar = {
        let mb = MenuBar()
        mb.translatesAutoresizingMaskIntoConstraints = false
        return mb
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView?.backgroundColor = .white
        collectionView?.register(VideoCell.self, forCellWithReuseIdentifier: "home")

        navigationController?.navigationBar.isTranslucent = false

        let frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 32)
        let titleLabel = UILabel(frame: frame)
        titleLabel.text = "Home"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        navigationItem.titleView = titleLabel

        collectionView?.contentInset = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)

        collectionView?.scrollIndicatorInsets = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)

        setupMenuBar()

    }


    private func setupMenuBar() {
     view.addSubview(menuBar)
     menuBar.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
     menuBar.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
     menuBar.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
     menuBar.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }


}

extension HomeViewController {

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: homeCellID, for: indexPath)

        return cell
    }

    // Remove line spacing
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}

extension HomeViewController : UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let height = (view.frame.width - 16 - 16) * 9 / 16

        return CGSize(width: view.frame.width, height: height + 16 + 68)
    }

}
