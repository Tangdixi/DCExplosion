#DCExplosion

![DemoGif](https://raw.githubusercontent.com/Tangdixi/DCExplosion/master/Explosion.gif)

**DCExplosion** allow you to remove a view with explode animation. Written in Swift, using [Protocol-Oriented Programming](https://developer.apple.com/videos/play/wwdc2015/408/)

## How To Get Started  
- Download [**DCExplosion**](https://codeload.github.com/Tangdixi/DCExplosion/zip/master)
- Clone ** DCExplosion**
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
* Explode the view
```swift
yourView.explode(duration: 1)
```
* Change the direction 
```swift
imageView.explode(.Chaos, duration: 1)
```
* Complete callback
```swift
imageView.explode(.Chaos, duration: 1) {
	// do something here ...
}
```
* TableViewCell  
```swift
tableView.explodeRowAtIndexPath(indexPath, duration:1 ,direction: .Chaos) {
      dataSource.removeAtIndex(indexPath.row)
    }
```  

More detail in **Example Project**

##Documentation
**Documentation** is added into the source file.  
You can use `option` and click the keyword in **Xcode**   

##Bug, Suggestions

All you need is open an [issue](https://github.com/Tangdixi/DCQRCode/issues), I'll answer it ASAP !

##TODO
*  Remove a UICollectionCell with explode animation
*  More than explosion maybe

##License

** DCExplosion** is available under the MIT license. See the LICENSE file for more info.

