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
You can use SPM to install `AIGoto` by adding it to your `Package.swift`:

```
.package(url: "https://github.com/AlexyIbrahim/AIGoto.git", from: "1.0.0")
```

## Usage example

```swift
import AIGoto

goto.define("first goto") {
  print("first goto fired")
  |->"second goto"
}
        
goto.define("second goto") {
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

