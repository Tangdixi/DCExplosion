//
//  File.swift
//  Example (Explodable)
//
//  Created by tang dixi on 22/7/2016.
//  Copyright © 2016 Tangdixi. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
  
  let directions = [ExplodeDirection.top, ExplodeDirection.bottom, ExplodeDirection.left, ExplodeDirection.right, ExplodeDirection.chaos]
  
  @IBOutlet weak var frontImageView: UIImageView!
  
  @IBAction func crashTapped(_ sender: AnyObject) {
    
    let randomDirection = Int(arc4random_uniform(UInt32(4 - 0)) + 0)
    let direction = directions[randomDirection]
    
    frontImageView?.explode(direction, duration: 3) {
			guard let navigationController = self.navigationController else { return }
			
      navigationController.popViewController(animated: true)
    }
    
  }
  
}
