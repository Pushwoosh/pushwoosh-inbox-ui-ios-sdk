# Pushwoosh Inbox UI

[![GitHub release](https://img.shields.io/github/release/Pushwoosh/pushwoosh-inbox-ui-ios-sdk.svg?style=flat-square)](https://github.com/Pushwoosh/pushwoosh-inbox-ui-ios-sdk/releases)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/PushwooshInboxUI.svg)](https://cocoapods.org/?q=pushwooshinboxui)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

## How To Get Started

## Communication

- If you **need help**, use [Stack Overflow](https://stackoverflow.com/questions/tagged/pushwoosh). (Tag 'pushwoosh')
- If you'd like to **ask a general question**, use [Stack Overflow](https://stackoverflow.com/questions/tagged/pushwoosh).
- If you **found a bug**, _and can provide steps to reliably reproduce it_, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.

## Installation

PushwooshInboxUI supports multiple methods for installing the library in a project.

## Installation with CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like PushwooshInboxUI in your projects. See the ["Getting Started" guide for more information](http://docs.pushwoosh.com/docs/native-ios-sdk). You can install it with the following command:

```bash
$ gem install cocoapods
```
> CocoaPods 0.39.0+ is required to build PushwooshInboxUI 5.5.0+.

#### Podfile

To integrate PushwooshInboxUI into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'

target 'TargetName' do
pod 'PushwooshInboxUI', '~> 5.5'
pod 'Pushwoosh', '~> 5.5'
end
```

Then, run the following command:

```bash
$ pod install
```

### Installation with Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate PushwooshInboxUI into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "Pushwoosh/pushwoosh-inbox-ui-ios-sdk" ~> 5.5
```

Run `carthage` to build the framework and drag the built `PushwooshInboxUI.framework` into your Xcode project.

## Implementation
To show Inbox UI in your app you can just add Inbox view controller:

### Swift
```swift
self.navigationController?.pushViewController(PWIInboxUI.createInboxController(with: PWIInboxStyle.default()), animated: true)
```

### Objective-C
```objectivec
[self.navigationController pushViewController:[PWIInboxUI createInboxControllerWithStyle:[PWIInboxStyle  defaultStyle]] animated:YES];
```

To make the Inbox match your app's look change parameters of `PWIInboxStyle`. You can customize such parameters as font, background color, etc.

### Swift
```swift
//creating a new Inbox style
let inboxStyle = PWIInboxStyle.customStyle(withDefaultImageIcon: UIImage.init(named: "custom_image"), 
textColor: UIColor.darkText, 
accentColor: UIColor.blue, 
font: UIFont.systemFont(ofSize: 17))

inboxStyle?.backgroundColor = UIColor.init(white: 1, alpha: 1)
inboxStyle?.listErrorMessage = NSLocalizedString("Custom error message", comment: "Custom error message")
inboxStyle?.listEmptyMessage = NSLocalizedString("Custom empty message", comment: "Custom empty message")

PWIInboxStyle.setupDefaultStyle(inboxStyle)
```

### Objective-C
```objectivec
//creating a new Inbox style
PWIInboxStyle *inboxStyle = [PWIInboxStyle  customStyleWithDefaultImageIcon:[UIImage imageNamed:@"custom_image"] 
textColor:UIColor.darkTextColor
accentColor:UIColor.blueColor
font:[UIFont systemFontOfSize:17]];

inboxStyle.backgroundColor = [UIColor colorWithWhite:1 alpha:1];
inboxStyle.listErrorMessage = NSLocalizedString(@"Custom error message", @"Custom error message");
inboxStyle.listEmptyMessage = NSLocalizedString(@"Custom empty message", @"Custom empty message");

[PWIInboxStyle setupDefaultStyle:inboxStyle];
```

## Customization
To customize Inbox UI style, please see:  
[PWIInboxStyle.h](https://github.com/Pushwoosh/pushwoosh-inbox-ui-ios-sdk/blob/master/Framework/PushwooshInboxUI.framework/Versions/A/Headers/PWIInboxStyle.h)  
and  
[PWIInboxUI.h](https://github.com/Pushwoosh/pushwoosh-inbox-ui-ios-sdk/blob/master/Framework/PushwooshInboxUI.framework/Versions/A/Headers/PWIInboxUI.h) 

For more details, take a look at [Inbox sample](Sample).
#### Change Log

See this repository's [release tags](https://github.com/Pushwoosh/pushwoosh-inbox-ui-ios-sdk/releases) for a complete change log of every released version.

## License

PushwooshInboxUI is released under the MIT license. See LICENSE for details.
