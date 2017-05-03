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

  @IBAction func refreshTapped(_ sender: AnyObject) {
    data = ["1", "2", "3", "4", "5", "6"]
    tableView.reloadData()
  }
  
}

extension CellController:UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    return UIView()
  }
  
}

extension CellController:UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.explodeRowAtIndexPath(indexPath, duration:1 ,direction: .right) {
      data.remove(at: indexPath.row)
    }
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    cell.imageView?.image = UIImage(named: "image")
    cell.textLabel?.text = data[indexPath.row]
    return cell
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data.count
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
}


