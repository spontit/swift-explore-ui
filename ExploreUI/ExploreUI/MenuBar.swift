//
//  MenuBar.swift
//  ExploreUI
//
//  Created by Zhang Qiuhao on 5/29/20.
//  Copyright © 2020 Zhang Qiuhao. All rights reserved.
//

import Foundation
import UIKit

class MenuBar: UIView {
    
    
    static let MENU_BAR_HEIGHT : CGFloat = 50
    
    // MARK:- Globals
    let cellId = "cellId"
    
    
    lazy var collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .green
        cv.allowsMultipleSelection = false
        cv.allowsSelection = true
        cv.delegate = self
        cv.dataSource = self
        return cv
    }()
    
    private let bar : UIView = {
        let bar = UIView()
        bar.translatesAutoresizingMaskIntoConstraints = false
        bar.backgroundColor = .white
        return bar
    }()
    
    private var selectionBarLeftConstaint: NSLayoutConstraint?
    var testController: TestViewController?
    
    // MARK:- Overriden Functions
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blue
        self.addSubview(self.collectionView)
        self.collectionView.register(MenuCell.self, forCellWithReuseIdentifier: cellId)
        self.addConstraintsWithFormat("H:|[v0]|", views: self.collectionView)
        self.addConstraintsWithFormat("V:|[v0]|", views: self.collectionView)
        self.collectionView.selectItem(at: IndexPath(row: 0, section: 0), animated: false, scrollPosition: .bottom)
        self.setSelectionBar()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK:- Helper Functions
    private func setSelectionBar() {
        self.addSubview(bar)
        self.selectionBarLeftConstaint = bar.leftAnchor.constraint(equalTo: self.leftAnchor)
        self.selectionBarLeftConstaint?.isActive = true
        bar.widthAnchor.constraint(equalToConstant: self.frame.width / 4).isActive = true
        bar.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20).isActive = true
        bar.heightAnchor.constraint(equalToConstant: 20).isActive = true
        self.bringSubviewToFront(self.bar)
    }
    
}

extension MenuBar: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MenuCell
        cell.title.text = "list"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.frame.width/4, height: 50)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.testController?.scrollToMenuIndex(index: indexPath.item)
    }
    
}

extension UIView {
    func addConstraintsWithFormat(_ format: String, views: UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
