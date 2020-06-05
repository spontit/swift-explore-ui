//
//  TestController.swift
//  ExploreUI
//
//  Created by Zhang Qiuhao on 6/4/20.
//  Copyright © 2020 Zhang Qiuhao. All rights reserved.
//

import Foundation

import UIKit

class TestViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    // MARK:- Globals
    lazy var menuBar: MenuBar = {
        let mb = MenuBar(frame: .zero)
        mb.translatesAutoresizingMaskIntoConstraints = false
        mb.testController = self
        return mb
    }()
    
    // MARK:- Overriden Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpMenuBar()

        collectionView.backgroundColor = .green
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView.contentInset = UIEdgeInsets(top: MenuBar.MENU_BAR_HEIGHT, left: 0, bottom: 0, right: 0)
        collectionView.scrollIndicatorInsets = UIEdgeInsets(top: MenuBar.MENU_BAR_HEIGHT, left: 0, bottom: 0, right: 0)

        collectionView.isPagingEnabled = true
        collectionView.isScrollEnabled = true
    }
    
    

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        cell.backgroundColor = indexPath.item % 2 == 0 ? .red : .blue
        return cell
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: self.view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("item", indexPath.item)
        
    }
    
    
    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let index = targetContentOffset.pointee.x / self.view.frame.width
        
        self.menuBar.collectionView.selectItem(at: IndexPath(item: Int(index), section: 0), animated: false, scrollPosition: .centeredHorizontally)
    }
    

    
    // MARK:- Helper Functions
    private func setUpMenuBar() {
        self.view.addSubview(self.menuBar)
        self.menuBar.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        self.menuBar.heightAnchor.constraint(equalToConstant: MenuBar.MENU_BAR_HEIGHT).isActive = true
        self.menuBar.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
    }
    
    func scrollToMenuIndex(index: Int) {
        let indexPath = IndexPath(row: index, section: 0)
        print("index", index)
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    
}
    
