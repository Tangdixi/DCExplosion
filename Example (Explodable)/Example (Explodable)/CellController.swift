//
//  ViewController.swift
//  Example (Explodable)
//
//  Created by tang dixi on 7/6/2016.
//  Copyright © 2016 Tangdixi. All rights reserved.
//

import UIKit

extension UIView:Explodable { }

var data = ["1", "2", "3", "4", "5"]

class CellController: UIViewController, Explodable {

  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    data = ["1", "2", "3", "4", "5"]
  }

  @IBAction func refreshTapped(sender: AnyObject) {
    data = ["1", "2", "3", "4", "5", "6"]
    tableView.reloadData()
  }
  
}

extension CellController:UITableViewDelegate {
  
  func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    return UIView()
  }
  
}

extension CellController:UITableViewDataSource {
  
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    tableView.explodeRowAtIndexPath(indexPath, duration:1 ,direction: .Right) {
      data.removeAtIndex(indexPath.row)
    }
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
    cell.imageView?.image = UIImage(named: "image")
    cell.textLabel?.text = data[indexPath.row]
    return cell
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data.count
  }
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
}


