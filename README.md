[![License](https://img.shields.io/github/license/OrkhanAlikhanov/LayoutSwift.svg)](https://github.com/OrkhanAlikhanov/LayoutSwift/blob/master/LICENSE)

# LayoutSwift 📐
Yet another Swift Autolayout DSL for iOS

Extracted from my work at [CosmicMind/Material](https://github.com/CosmicMind/Material/tree/development/Sources/iOS/Layout) and updated.

## Usage

```swift
override func viewDidLoad() {
  super.viewDidLoad()

  view.layout(logoView)
    .topMargin()
    .centerX()
    .height(100)
  
  view.layout(titleLabel)
    .centerX()
    .widthMargin()
    .below(logoView, 16)
```

For details, refer to the PRs for docs:
- [CosmicMind/Material#1185](https://github.com/CosmicMind/Material/pull/1185)
- [CosmicMind/Material#1236](https://github.com/CosmicMind/Material/pull/1236)
- [CosmicMind/Material#1210](https://github.com/CosmicMind/Material/pull/1210)


## Other works
- [ChainSwift](https://github.com/OrkhanAlikhanov/ChainSwift) - ChainSwift 🔗 is an extension that provides chainable way of setting properties.

## Installation

### Swift Package Manager

_Note: Instructions below are for using **SwiftPM** without the Xcode UI. It's the easiest to go to your Project Settings -> Swift Packages and add LayoutSwift from there._

To integrate using Apple's [Swift Package Manager](https://swift.org/package-manager/) , without Xcode integration, add the following as a dependency to your `Package.swift`:

```swift
dependencies: [
  .package(url: "https://github.com/OrkhanAlikhanov/LayoutSwift.git", .upToNextMajor(from: "1.0.0"))
]
```
and then specify `"LayoutSwift"` as a dependency of the Target in which you wish to use LayoutSwift.

### Manually
Just drag and drop the files in the [Sources](https://github.com/OrkhanAlikhanov/LayoutSwift/blob/master/Sources) folder.

## Authors
* **Orkhan Alikhanov** - *Initial work* - [OrkhanAlikhanov](https://github.com/OrkhanAlikhanov)

See also the list of [contributors](https://github.com/OrkhanAlikhanov/LayoutSwift/contributors) who participated in this project.

## Love our work?
Hit the star 🌟 button! It helps! ❤️

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/OrkhanAlikhanov/LayoutSwift/blob/master/LICENSE) file for details
