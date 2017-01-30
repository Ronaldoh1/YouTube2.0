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

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView?.register(VideoCell.self, forCellWithReuseIdentifier: "home")
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
        cell.backgroundColor = .red

        return cell
    }

    // Remove line spacing
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}

extension HomeViewController : UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 200)
    }

}
