# WhiteNavigationController

[![GitLab Source](http://img.shields.io/badge/source-GitLab-%23292961.svg)](https://git.zsinfo.nl/Zandor300/WhiteNavigationController)
[![CI Status](https://git.zsinfo.nl/Zandor300/WhiteNavigationController/badges/master/build.svg)](https://git.zsinfo.nl/Zandor300/WhiteNavigationController/pipelines)
[![Version](https://img.shields.io/cocoapods/v/WhiteNavigationController.svg?style=flat)](https://cocoapods.org/pods/WhiteNavigationController)
[![License](https://img.shields.io/cocoapods/l/WhiteNavigationController.svg?style=flat)](https://git.zsinfo.nl/Zandor300/WhiteNavigationController/blob/master/LICENSE)
[![Platform](https://img.shields.io/cocoapods/p/WhiteNavigationController.svg?style=flat)](https://cocoapods.org/pods/WhiteNavigationController)
[![Swift Version](https://img.shields.io/badge/swift-5.0-orange.svg)](https://git.zsinfo.nl/Zandor300/WhiteNavigationController)

This pod will try to mimic the white navigation bars that Apple is adopting in their own apps.

You could do the same thing by setting the `UINavigationBar` to white. That would however produce a less good looking blur when scrolling down. ([TestFlight](https://itunes.apple.com/us/app/testflight/id899247664) is a good example of this.) This pod will try to mimic the same thing but with a proper blur, like the stock `UINavigationBar` has.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

WhiteNavigationController is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'WhiteNavigationController'
```

## Usage

* In your Storyboard, drag in a `UINavigationController` (if you don't have one already on which you want to apply this) and then go into the **Identity Inspector** while you have your `UINavigationController` selected.
* Now, under **Custom Class** > **Class**, fill in `WhiteNavigationController` and check **Inherit Module From Target**.
* Done! The navigation bars should now be white, while still blurring content behind it when scrolling down.

## Contributing & Issues

The source of this pod is hosted on my personal GitLab server. This repository is mirrored to GitHub. If you want to contribute, you will have to do that on [my personal GitLab server](https://git.zsinfo.nl/Zandor300/WhiteNavigationController).

If you find issues with this pod, you can report those over at [my personal GitLab server](https://git.zsinfo.nl/Zandor300/WhiteNavigationController).

## Author

Zandor300, info@zsinfo.nl

## License

WhiteNavigationController is available under the MIT license. See the LICENSE file for more info.
