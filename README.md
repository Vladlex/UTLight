# UTLight

[![CI Status](https://img.shields.io/travis/Vladlex/UTLight.svg?style=flat)](https://travis-ci.org/Vladlex/UTLight)
[![Version](https://img.shields.io/cocoapods/v/UTLight.svg?style=flat)](https://cocoapods.org/pods/UTLight)
[![License](https://img.shields.io/cocoapods/l/UTLight.svg?style=flat)](https://cocoapods.org/pods/UTLight)
[![Platform](https://img.shields.io/cocoapods/p/UTLight.svg?style=flat)](https://cocoapods.org/pods/UTLight)


## Getting Started

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Example

### Creating a UTI
To create a UTI use following syntax: 
```
UTLIdentifier.JPEG
```

You can still use MobileCoreServices constants: 
```
UTLIdentifier(kUTTypeJPEG)
```
You can also use you very own UTI: 
```
UTLIdentifier("public.jpeg")
```

Or you can declare key yo use it everywhere without copypasting:
```
public extension UTLIdentifier {
    public static let myVeryOwn = UTLIdentifier("my.very.own.id")
}

let id =  UTLIdentifier.myVeryOwn
```

### Using a UTI
Instead of using MobileCoreServices methods UTLitght provides more lightweight interface.

To know whether an UTI declared:
```
UTLIdentifier.appleScript.isDeclared
```

To know whether an UTI dynamic:
```
UTLIdentifier.appleScript.isDynamic
```

To get a preferred MIME-type:
```
// Normally you write one-line code. 
// Two lines are for better understanding, that MIMEType is a special raw reprewentable structure
let type = UTLIdentifier.JPEG.preferredMimeType
let stringRepresentation = type.rawValue
```

To get a preferred file extension:
```
let fileExt = UTLIdentifier.JPEG.preferredFileExtension
```

You still have full power of original MobileCoreServices, because every computed vars and methods are fully relied on the system framework and just wraps it's not very handy syntax.


## Requirements
CI: testing performs on iOS 12.1

Development: Xcode 10.0, swift 4.2


## Installation

UTLight is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'UTLight'
```

## Running the tests

Tests a standart target in a workspace. Just choose a simulator and run tess using Xcode menu or shortcut (⌘+U by default)

## Frameworks

 - MobileCoreServices (iOS integrated framework by Apple)

## Author

Vladlex, vladlexion@gmail.com

## License

UTLight is available under the MIT license. See the LICENSE file for more info.
