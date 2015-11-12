IFAAppUI is a Cocoa Touch framework that helps you develop high quality iOS apps faster. It requires iOS 8 or greater.

IFAAppUI has a dependency on the foundation provided by [IFACoreUI](https://github.com/marcelo-schroeder/IFACoreUI). If you need fenhanced API functionality that is safe to use by app extensions, then use IFACoreUI. IFAAppUI provides extra functionality on top of IFACoreUI that only apps can use (e.g. access to UIApplication).

This framework has been used in a few projects for my clients.

The latest API documentation can be found [here](http://cocoadocs.org/docsets/IFAAppUI).

Additional documentation and sample code are coming soon.

## Preview Video ##

Make sure to check the demo app [video](https://www.youtube.com/embed/RAEn9zqvI14) out!

At this stage, only the HUD functionality is shown in the video. More to come soon...

## Features ##

IFAAppUI is broad in terms of the features it offers, but it is also flexible. You can benefit just from the features you are interest in without being distracted by the others you don't want to use.

### Core Data ###

IFAAppUI makes it easy to implement the UI on top of Core Data persistence with the following main features:

* CRUD support
  * Configurable via plist (no code required, but it is supported)
  * Automatic binding between view and model
  * Forms
      * Various editor types and controls supported such as:
          * Text fields
          * Long text fields
          * Numeric fields
          * Switches
          * Segmented controls
          * Pickers
          * Date pickers
          * Single selection lists
          * Multiple selection lists
          * Custom editors
      * Sub-forms
      * Help support
  * Lists
    * Edit mode support
    * Detail view linking to forms
* Look up tables with version control and conversion
* Core Data utilities

### HUD (Heads-Up Display) ###

Finally a modern HUD implementation for iOS!

Features:

* Modern UIKit API's used such as view controller containment and auto layout
* Multiple styles including blur and vibrancy
* Visual indicators:
  * Indeterminate progress
  * Determinate progress
  * Success
  * Error
  * Custom view
* Modality:
  * Modal
  * Non-modal
* User interaction:
  * Chrome tap
  * Overlay tap
* Layout:
  * Compressed
  * Expanded
  * Padding
  * Inter-item spacing
* Dynamic layout changes:
  * Non-animated
  * Animated
* Font:
  * Test style customisation
  * Font customisation
* Colour scheme customisation
* Content subview order customisation
* Completion blocks for presentation and dismissal
* Motion (honours reduce motion setting)
* And support for:
  * Appearance API
  * Both Objective-C and Swift
  * Dynamic font type
  * Device rotation

### Miscellaneous ###

* Asynchronous operations with UI support such as progress indicators
* Internal web browser
* Appearance theme support
* Help system
* About screen
* Lazy data loading for table views (also known as infinite scrolling)
* Foundation utility classes
* UI utility classes
* Smart grid collection views
* HTML parsing and manipulation utility classes

## How to integrate IFAAppUI ##

IFAAppUI can be integrated to your project via Cocoapods or Carthage.

## How to use IFAAppUI ##

Refer to the DemoApp workspace for the demo app exploring IFAAppUI's features. Only HUD functionality is currently explored by the demo app. More to come soon...

The easiest way to just try the demo app is by running the following from the command line (Cocapods must be installed):

```
pod try IFAAppUI
```

## Latest API Documentation ##

http://cocoadocs.org/docsets/IFAAppUI
