# EFFlukyProgressHUD

[![CI Status](https://img.shields.io/travis/EFPrefix/EFFlukyProgressHUD.svg?style=flat)](https://travis-ci.org/EFPrefix/EFFlukyProgressHUD)
[![Version](https://img.shields.io/cocoapods/v/EFFlukyProgressHUD.svg?style=flat)](https://cocoapods.org/pods/EFFlukyProgressHUD)
[![License](https://img.shields.io/cocoapods/l/EFFlukyProgressHUD.svg?style=flat)](https://cocoapods.org/pods/EFFlukyProgressHUD)
[![Platform](https://img.shields.io/cocoapods/p/EFFlukyProgressHUD.svg?style=flat)](https://cocoapods.org/pods/EFFlukyProgressHUD)

EFFlukyProgressHUD is an ordinary custom loading hub, simply combines `MBProgressHUD` with `Fluky`.

## Preview

| Single  | Linear | Box |
|:-:|:-:|:-:|
| ![](https://github.com/EFPrefix/EFFlukyProgressHUD/blob/master/Assets/single.gif?raw=true) | ![](https://github.com/EFPrefix/EFFlukyProgressHUD/blob/master/Assets/linear.gif?raw=true) | ![](https://github.com/EFPrefix/EFFlukyProgressHUD/blob/master/Assets/box.gif?raw=true) |

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- XCode 9.0+
- Swift 4.2+
- iOS 9.0+

## Installation

EFFlukyProgressHUD is available through [CocoaPods](https://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod 'EFFlukyProgressHUD'
```

## Use

This library simply combines `MBProgressHUD` with `Fluky`, fast use:

```swift
// 1.
EFFlukyProgressHUD.showAdded(to: self.view, animated: true)
```

Or you can custom it:

```swift
// 2.
let hub: EFFlukyProgressHUD = EFFlukyProgressHUD(flukyType: FlukyType.single)
self.view.addSubview(hub)
hub.show(animated: true)
```

For more information, you can see the document of [MBProgressHUD](https://github.com/jdg/MBProgressHUD) and [Fluky](https://github.com/pedrommcarrasco/Fluky).

## Author

EyreFree, eyrefree@eyrefree.org

## License

EFFlukyProgressHUD is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
