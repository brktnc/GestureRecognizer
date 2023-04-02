//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Berk Tunç on 24.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var isChanged = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic()
    {
        if isChanged == true
        {
            imageView.image = UIImage(named: "tool2")
            nameLabel.text = "tool2"
            isChanged = false
        }else
        {
            imageView.image = UIImage(named: "tool1")
            nameLabel.text = "tool1"
            isChanged = true
        }
    }
    
}

