//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

public var page = 0
var currentView = UIView(frame:  CGRect(x: 0, y: 0, width: 600, height: 600))
public var home = Home()

// Present the view controller in the Live View window

switch page {
case 1:
    currentView.subviews.forEach({ $0.removeFromSuperview() })
    break
default:
    currentView.addSubview(home)
    break
}
PlaygroundPage.current.liveView = currentView
