//
//  ViewController.swift
//  ExploreUI
//
//  Created by Zhang Qiuhao on 5/29/20.
//  Copyright © 2020 Zhang Qiuhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: -Globals
    let layout = UICollectionViewLayout()
    
    var menuBar : UICollectionView!
    
    let cellId = "cellId"
    let options = ["Recommend", "COVID-19", "News", "Sports"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setUp()
    }

    private func setUp() {
        
        self.menuBar = MenuBar(frame: .zero)
        
        self.menuBar.dataSource = self
        self.menuBar.delegate = self
        self.menuBar.reloadData()
        self.menuBar.backgroundColor = .red
        self.view.addSubview(self.menuBar)
        self.menuBar.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        self.menuBar.heightAnchor.constraint(equalToConstant: 50).isActive = true
        self.menuBar.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("4")
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("cell")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! MenuCell
        cell.backgroundColor = .blue
        cell.title.text = self.options[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        print("size")
        return CGSize(width: 50, height: 50)
    }
    
    
}

