# 学习要点

- Cocoa Touch
- UIKit

iOS层级架构
- Application（开发者开发的App）
- Cocoa Touch (主要包含 UIKit, MapKit, GameKit等)
- Media Layer （媒体相关， Core Animation）
- Core Services （Foundation 等）
- Core OS （系统层）
-

**UIKit主要的类**
![](./_image/011903214304560.jpg)

**Demo Playground**
```swift
//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .red

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .white
        
        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
```
