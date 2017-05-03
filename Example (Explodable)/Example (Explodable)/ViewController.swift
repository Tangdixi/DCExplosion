//
//  ViewController.swift
//  Example (Explodable)
//
//  Created by tang dixi on 17/6/2016.
//  Copyright © 2016 Tangdixi. All rights reserved.
//

import Foundation
import UIKit

var directions = [ExplodeDirection.left, ExplodeDirection.top, ExplodeDirection.right, ExplodeDirection.bottom, ExplodeDirection.chaos]

class ViewController: UIViewController {
  
  @IBOutlet weak var bottomView: UIView!
  var imageView = UIImageView()
  var direction = directions.first!
  var duration = Double(1)
  
  override func viewDidLoad() {
    if imageView.superview == nil {
      imageView.frame = self.bottomView.bounds
      imageView.image = UIImage(named: "image")
      bottomView.addSubview(imageView)
    }
  }
  
  @IBAction func explodeDirectionChanged(_ sender: AnyObject) {
    guard let segment = sender as? UISegmentedControl else { return }
    direction = directions[segment.selectedSegmentIndex]
  }
  
  @IBAction func explodeDurationChanged(_ sender: AnyObject) {
    guard let slider = sender as? UISlider else { return }
    duration = Double(slider.value)
  }
  
  @IBAction func explode(_ sender: AnyObject) {
    imageView.explode(direction, duration: duration) {
      self.bottomView.addSubview(self.imageView)
    }
  }
  
}
