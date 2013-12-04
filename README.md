FontAwesomeKitCustomFont
========================

Demonstrates how to use custom icon font with FontAwesomeKit.

### How To Run This Demo
Clone this repo, cd to the root folder of the project in command line, run `pod install` to install dependencies with CocoaPods, then open `FontAwesomeKitCustomFont.xcworkspace`. 

### How does it work
1. Add `pod 'FontAwesomeKit/Core'` to the Podfile then run `pod install` to install the core of FontAwesomeKit. The core subspec contains 2 files: `FAKIcon.h` and `FAKIcon.m`. If you prefer manually installation instead of CocoaPods, add these 2 files to your project.
2. Add you custom font to your project, make sure they are added to the build target.
3. Subclass `FAKIcon`, implement `+ (UIFont *)iconFontWithSize:(CGFloat)size`. `+ allIcons` is optional, but the `- iconName` method of `FAKIcon` subclasses relies on it.

### Where To Start Reading
The `FCFCustomIcon.m` file.
