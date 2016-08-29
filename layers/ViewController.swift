//
//  ViewController.swift
//  layers
//
//  Created by Pranjal Satija on 5/14/16.
//  Copyright © 2016 Pranjal Satija. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var box: UIView!
    
    override func viewDidLoad() {
        // Creating rounder corners
        box.layer.cornerRadius = 10
        
        // Adding shadow effects
        box.layer.shadowOffset = CGSizeMake(5, 5)
        box.layer.shadowOpacity = 0.7
        box.layer.shadowRadius = 5
        box.layer.shadowColor = UIColor(red: 44.0/255.0, green: 62.0/255.0, blue: 80.0/255.0, alpha: 1.0).CGColor
        
        // Applying borders
        box.layer.borderColor = UIColor(red: 44.0/255.0, green: 62.0/255.0, blue: 80.0/255.0, alpha: 1.0).CGColor
        box.layer.borderWidth = 3
        
        // Display images
        box.layer.contents = UIImage(named: "tree.jpg")?.CGImage
        box.layer.contentsGravity = kCAGravityResize
        box.layer.masksToBounds = true

    }
}