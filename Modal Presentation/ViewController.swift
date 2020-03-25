//
//  ViewController.swift
//  Modal Presentation
//
//  Created by Marky Jordan on 3/24/20.
//  Copyright © 2020 Marky Jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // implement 'Present' button
        let presentButton = UIButton()
        presentButton.frame = CGRect(x: 100, y: 100, width: 100, height: 60)
        presentButton.setTitle("Present", for: .normal)
        presentButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(presentButton)
        
        // add 'Present' button's target action
        presentButton.addTarget(self, action: #selector(modalPresentation), for: UIControl.Event.touchUpInside)
    }

    // function for modal presentation of a view controller
    @objc func modalPresentation() {
        let nextController = UIImagePickerController()
        present(nextController, animated: true, completion: nil)
    }
}

