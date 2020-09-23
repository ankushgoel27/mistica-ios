<br>
<br>
<img height="90" alt="Mística for iOS" src="./mistica-logo.svg">
<br>

#  Mistica for iOS

[![Platform](https://img.shields.io/badge/platform-iOS-%23989898.svg)](https://github.com/Telefonica/mistica-ios)
[![iOS Version](https://img.shields.io/badge/Support-%3E%3D%20iOS%2011.0-brightgreen.svg)](https://github.com/Telefonica/mistica-ios)
[![Languages](https://img.shields.io/badge/languages-Swift-orange.svg)](https://github.com/Telefonica/mistica-ios)
[![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-59C939.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Cocoapods compatible](https://img.shields.io/badge/CocoaPods-compatible-59C939.svg?style=flat)](https://cocoapods.org/)

Mistica is a framework that contains reusable UI components and utilities.

* [Instalation](#instalation)
* [Configuration](#configuration)
* [Components](#components)
* [Demo app](#demo-app)
* [Contributing](#contributing)

## Instalation

### Swift Package Manager

You can add Mistica to an Xcode project by adding it as a package dependency.

1. From the **File** menu, select **Swift Package** > **Add Package Dependency**.
2. Enter "[https://github.com/Telefonica/mistica-ios](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fpointfreeco%2Fswift-composable-architecture%2Fbadge%3Ftype%3Dswift-versions)" into the package repository URL text field.
3. From the **Add Package to App** window, select **Mistica** library. Add only **MisticaCatalog** if you want to see the Component Catalog inside your app.

You also can integrate Mitica to Swift Package, add the following as a dependency to your `Package.swift`:

```swift
.package(name: "Mistica", url: "https://github.com/Telefonica/mistica-ios.git", .from("2.0.0"))
```

and then specify `"Mistica"` as a dependency of the Target in which you wish to use Mistica.

If you want to use the Catalog Component inside your app, add also `"MisticaCatalog"` as your Target dependency respectively.

Here's an example `PackageDescription`:

```swift
// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MyPackage",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "MyPackage",
            targets: ["MyPackage"]),
    ],
    dependencies: [
        .package(name: "Mistica", url: "https://github.com/Telefonica/mistica-ios.git", from: "2.0.0")
    ],
    targets: [
        .target(
            name: "MyPackage",
            dependencies: [
                "Mistica"
            ]),
        .testTarget(
            name: "MyPackageTests",
            dependencies: ["MyPackage"]),
    ]
)
```

### Carthage

Add Mistica to your `Cartfile`:

```
github "Telefonica/mistica-ios"
```

And then run:

```
carthage update --platform iOS --use-ssh
```

> More information about Carthage integration [here](https://github.com/Carthage/Carthage#if-youre-building-for-ios-tvos-or-watchos)

### Cocoapods

Add Mistica to your `Podfile`:

```
pod 'Mistica', :git => 'git@github.com:Telefonica/mistica-ios.git'
```

And then run:

```
pod install
```

## Configuration

By default the framework components are created with the Movistar's brand style and the `standard` theme variant, to select a different one, configure the brand style and/or variant:

```swift
MisticaConfig.brandStyle = .o2
MisticaConfig.themeVariant = .prominent
```

Remember to initialize Mistica with you desired brand style before the initialize the UI of your app.

In applications before iOS 13, the initialziation should be done in **UIApplicationDelegate**,

```swift
func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Set up Mistica
    MisticaConfig.brandStyle = .vivo
    
    return true
}
```

For applications in iOS 13 and above, the initialization should be done in **SceneDelegate**

```swift
func scene(_ scene: UIScene, willConnectTo _: UISceneSession, options _: UIScene.ConnectionOptions) {
    guard let windowScene = (scene as? UIWindowScene) else { return }

    // Configure brand style before initializing the UI
    MisticaConfig.brandStyle = .movistar
}
```

## Components

* [Button](./Mistica/Components/Button/)
* [Crouton](./Mistica/Components/Crouton/)
* [SegmentSelector](./Mistica/Components/SegmentSelector/)
* [Feedbacks](./Mistica/Components/Feedback/)
* [Popover](./Mistica/Components/Popover/)
* [ViewStates](./Mistica/Components/ViewStates/)
* [Badge](./Mistica/Components/Badge/)
* [InputFields](./Mistica/Components/InputField/)
* [ScrollContentIndicator](./Mistica/Components/ScrollContentIndicator/)
* [Lists](./Mistica/Components/Lists/)
* [SectionTitle](./Mistica/Components/SectionTitle/)
* [Header](./Mistica/Components/Header/)

## Demo app
Included in this repository is a demo app with all implemented components. We have also created a demo app with is being update constantly where we show all the componennts from the library

The app can be downloaded [here](https://install.appcenter.ms/orgs/tuenti-organization/apps/mistica-ios/distribution_groups/public)

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md)