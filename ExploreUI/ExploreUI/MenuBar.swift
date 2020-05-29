//
//  MenuBar.swift
//  ExploreUI
//
//  Created by Zhang Qiuhao on 5/29/20.
//  Copyright © 2020 Zhang Qiuhao. All rights reserved.
//

import Foundation
import UIKit

class MenuBar: UICollectionView {
    
    
    
    
//    let collectionView : UICollectionView = {
//        let layout = UICollectionViewLayout()
//        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        cv.backgroundColor = .black
//        return cv
//    }()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        //self.backgroundColor = .red
//        self.addSubview(self.collectionView)
//        self.collectionView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        self.collectionView.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        self.collectionView.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        self.collectionView.backgroundColor = .black
//        self.bringSubviewToFront(self.collectionView)
//    }
    let cellId = "cellId"
    
    init(frame: CGRect) {
        let layout = UICollectionViewLayout()
        super.init(frame: frame, collectionViewLayout: layout)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.register(MenuCell.self, forCellWithReuseIdentifier: cellId)
        self.allowsSelection = true
        self.allowsMultipleSelection = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
