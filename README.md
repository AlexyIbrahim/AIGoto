# AIGoto
[![Swift Version][swift-image]][swift-url]
[![License][license-image]][license-url] 
![Platform](https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat)

A Swift replacement for C goto statement

## Requirements

- iOS 11.0+
- Xcode 10.0+

## Installation

#### Swift Package Manager
You can use SPM to install `ProductName` by adding it to your `Package.swift`:

[ https://github.com/AlexyIbrahim/AIGoto.git ](https://github.com/AlexyIbrahim/AIGoto.git)

## Usage example

```swift
goto.set("first goto") {
	print("first goto fired")
	|->"second goto"
}
        
goto.set("second goto") {
	print("second goto fired")
}
        
|->"first goto"
```

## Meta

Alexy Ibrahim – [@Github](https://github.com/alexyibrahim) – alexy.ib@gmail.com

See ``LICENSE`` for more information.

[swift-image]:https://img.shields.io/badge/swift-5.0-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE.md
# 

