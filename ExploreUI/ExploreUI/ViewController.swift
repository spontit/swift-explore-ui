import SwipeViewController
import UIKit

class ViewController: UIViewController {
    
    let menuBar: MenuBar = {
        let mb = MenuBar()
        return mb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(push))
//        barButtonItem.tintColor = .black
//        leftBarButtonItem = barButtonItem
        self.setUpMenuBar()
    }

    private func setUpMenuBar() {
        self.view.addSubview(self.menuBar)
        self.menuBar.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        self.menuBar.heightAnchor.constraint(equalToConstant: 50).isActive = true
        self.menuBar.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
    }
}
