//
//  TestController.swift
//  ExploreUI
//
//  Created by Zhang Qiuhao on 6/4/20.
//  Copyright © 2020 Zhang Qiuhao. All rights reserved.
//

import Foundation

import UIKit

class TestViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton()
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.setTitle("Button", for: .normal)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    @objc private func buttonTapped() {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .black
        navigationController?.pushViewController(viewController, animated: true)
    }
}
