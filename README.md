#DCExplosion

![DemoGif](https://raw.githubusercontent.com/Tangdixi/DCExplosion/master/Explosion.gif)

**DCExplosion** allow you to remove a view with explode animation. Written in Swift, using [Protocol-Oriented Programming](https://developer.apple.com/videos/play/wwdc2015/408/)

## How To Get Started  
- Download [**DCExplosion**](https://codeload.github.com/Tangdixi/DCExplosion/zip/master)
- Clone **DCExplosion**
```bash
git clone git@github.com:Tangdixi/DCExplosion.git
``` 

##Installation

Drag the **Source** into your project.  
Well, it is strongly recommended that you install via [**CocoaPods**](https://cocoapods.org)

##Usage
* Conform the protocol 
```swift
extension UIView:Explodable { }
```
* Explode a view and remove it from superView
```swift
yourView.explode(duration: 1)
```
* Explode a view and remove it from superView using the specified direction
```swift
imageView.explode(.Chaos, duration: 1)
```
* Explode a view and remove it from superView using the specified direction and completion handler
```swift
imageView.explode(.Chaos, duration: 1) {
	// do something here ...
}
```
* Explode a TableViewCell and delete it from UITableView using the specified direction and completion handler
```swift
tableView.explodeRowAtIndexPath(indexPath, duration:1 ,direction: .Chaos) {
      dataSource.removeAtIndex(indexPath.row)
}
```  

##Documentation
**Xcode Quick Help Documentation Supported** 

##Bug, Suggestions

Just open an [issue](https://github.com/Tangdixi/DCExplosion/issues) ~ 

##TODO
*  Remove a UICollectionCell with explode animation
*  More than explosion style

##License

**DCExplosion** is available under the MIT license. See the LICENSE file for more info.

