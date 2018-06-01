# 学习要点

- CocoaPods
- 常用 Pods

**CocoaPods 安装**
```shell
    sudo gem install cocoapods
```


**Podfile 示例**
```ruby
platform :ios, '9.0'
use_frameworks!

target 'DemoAppWithPods' do
  use_frameworks!
  pod 'Material'
  pod 'SnapKit'
  pod 'Qiniu', '~> 7.2'
  pod 'VGPlayer', '~> 0.2.0'
  pod 'Alamofire'
  pod 'Kingfisher'
  pod 'KeychainSwift'
end
```


**Pod加速**
<https://mirrors.tuna.tsinghua.edu.cn/help/CocoaPods/>
