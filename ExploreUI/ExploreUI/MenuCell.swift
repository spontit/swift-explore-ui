//
//  MenuCell.swift
//  ExploreUI
//
//  Created by Zhang Qiuhao on 5/29/20.
//  Copyright © 2020 Zhang Qiuhao. All rights reserved.
//

import Foundation
import UIKit

class MenuCell : UICollectionViewCell {
    
    var title : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .white
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUp() {
        self.contentView.addSubview(self.title)
        self.title.center.x = self.contentView.center.x
        self.title.center.y = self.contentView.center.y
    }
    
}
