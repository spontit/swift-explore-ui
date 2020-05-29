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
