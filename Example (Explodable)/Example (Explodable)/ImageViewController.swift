//
//  File.swift
//  Example (Explodable)
//
//  Created by tang dixi on 22/7/2016.
//  Copyright © 2016 Tangdixi. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
  
  
  @IBOutlet weak var frontImageView: UIImageView!
  
  @IBAction func crashTapped(sender: AnyObject) {
    
    frontImageView?.explode(.Chaos, duration: 4)
    
  }
  
}