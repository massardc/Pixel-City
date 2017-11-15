//
//  PopVC.swift
//  Pixel City
//
//  Created by ClementM on 15/11/2017.
//  Copyright © 2017 ClementM. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    // Outlet
    @IBOutlet weak var popImageView: UIImageView!
    
    // Variable
    var passedImage: UIImage!
    
    func initData(forImage image: UIImage) {
        self.passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addDoubleTap()
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }

}
