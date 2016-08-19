//
//  File.swift
//  Example (Explodable)
//
//  Created by tang dixi on 22/7/2016.
//  Copyright © 2016 Tangdixi. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
  
  let directions = [ExplodeDirection.Top, ExplodeDirection.Bottom, ExplodeDirection.Left, ExplodeDirection.Right, ExplodeDirection.Chaos]
  
  @IBOutlet weak var frontImageView: UIImageView!
  
  @IBAction func crashTapped(sender: AnyObject) {
    
    let randomDirection = Int(arc4random_uniform(UInt32(4 - 0)) + 0)
    let direction = directions[randomDirection]
    
    frontImageView?.explode(.Top, duration: 3) {
      self.navigationController?.popViewControllerAnimated(true)
    }
    
  }
  
}