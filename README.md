# Firebase iOS Binary SDK

A Swift Package Manager (SPM) wrapper for Firebase iOS SDK modules distributed as pre-compiled XCFramework binaries. This package provides an easy way to integrate Firebase services into your iOS projects with faster build times and reduced compilation overhead.

## Overview

This repository wraps the official Firebase iOS SDK libraries as binary XCFramework dependencies, making them available through Swift Package Manager. By using pre-compiled binaries instead of source code, you can significantly reduce your project's build time while maintaining full Firebase functionality.

## Features

- ✅ Pre-compiled XCFramework binaries for faster builds
- ✅ Swift Package Manager support
- ✅ Reduced compilation time
- ✅ All major Firebase iOS SDK modules included
- ✅ Regular updates aligned with official Firebase releases
- ✅ Lightweight integration for side projects

## Requirements

- iOS 15.0+
- macOS 10.15+
- tvOS 15.0+
- watchOS 7.0+
- Mac Catalyst 15.0+
- Xcode 14.0+
- Swift 5.7+

## Installation

### Swift Package Manager

Add the Firebase iOS Binary SDK to your project using Xcode:

1. Open your project in Xcode
2. Go to `File` → `Add Package Dependencies`
3. Enter the repository URL:
   ```
   https://github.com/SerhanAksut/Firebase-iOS-Binary-SDK
   ```
4. Select the version rule (recommend "Up to Next Major Version")
5. Click `Add Package`
6. Choose the Firebase modules you need from the available products

### Package.swift

If you're using a Package.swift file, add the dependency:

```swift
dependencies: [
    .package(url: "https://github.com/SerhanAksut/Firebase-iOS-Binary-SDK", from: "2.3.1")
],
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "FirebaseAnalytics", package: "Firebase-iOS-Binary-SDK"),
            .product(name: "FirebaseAuth", package: "Firebase-iOS-Binary-SDK"),
            // Add other Firebase modules as needed
        ]
    )
]
```

## Available Firebase Modules

This package includes the following Firebase modules as XCFramework binaries:

- **FirebaseAnalytics** - Google Analytics for Firebase
- **FirebaseAuth** - Firebase Authentication
- **FirebaseFirestore** - Cloud Firestore
- **FirebaseDatabase** - Realtime Database
- **FirebaseStorage** - Cloud Storage
- **FirebaseMessaging** - Cloud Messaging (FCM)
- **FirebaseCrashlytics** - Crashlytics
- **FirebaseRemoteConfig** - Remote Config
- **FirebasePerformance** - Performance Monitoring
- **FirebaseFunctions** - Cloud Functions
- **FirebaseDynamicLinks** - Dynamic Links
- **FirebaseAppCheck** - App Check

*Note: Available modules may vary based on the version. Check the Package.swift file for the complete list.*

## Usage

After installation, import and use Firebase modules in your code as you normally would:

```swift
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore

// In your AppDelegate or App struct
FirebaseApp.configure()

// Use Firebase services
Auth.auth().signIn(withEmail: email, password: password) { result, error in
    // Handle authentication
}
```

## Configuration

### GoogleService-Info.plist

Don't forget to add your `GoogleService-Info.plist` file to your Xcode project, which you can download from the [Firebase Console](https://console.firebase.google.com/).

### Firebase Crashlytics Build Script

If you're using Firebase Crashlytics, you need to update your build script path in Xcode:

1. Open your project in Xcode
2. Select your target
3. Go to **Build Phases** tab
4. Find your existing Firebase Crashlytics run script (or create a new one if it doesn't exist)
5. Update the script path from the official Firebase SDK path to:

```bash
"${BUILD_DIR%/Build/*}/SourcePackages/checkouts/Firebase-iOS-Binary-SDK/Crashlytics/run"
```

**Note**: This replaces the standard Firebase iOS SDK script path:
```bash
"${BUILD_DIR%/Build/*}/SourcePackages/checkouts/firebase-ios-sdk/Crashlytics/run"
```

This change is necessary because you're now using the binary wrapper instead of the official Firebase iOS SDK package, so the script location has changed accordingly.

## Benefits of Using Binary Frameworks

- **Faster Build Times**: Pre-compiled binaries eliminate the need to compile Firebase source code
- **Smaller Repository Size**: Binary dependencies don't include source code
- **Consistent Builds**: Pre-compiled frameworks ensure consistent behavior across different environments
- **Reduced Xcode Indexing Time**: Less source code means faster Xcode indexing

## Version Compatibility

This package aims to stay up-to-date with the latest stable Firebase iOS SDK releases. Check the [releases page](https://github.com/SerhanAksut/Firebase-iOS-Binary-SDK/releases) for version information and changelog.

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements:

1. Check existing issues first
2. Create a new issue with a clear description
3. Submit pull requests for bug fixes or enhancements

## License

This project is licensed under the same terms as the Firebase iOS SDK. Please refer to the [Firebase iOS SDK License](https://github.com/firebase/firebase-ios-sdk/blob/master/LICENSE) for details.

## Disclaimer

This is an unofficial wrapper of the Firebase iOS SDK. For official support and documentation, please refer to the [official Firebase documentation](https://firebase.google.com/docs/ios/setup).

## Related Resources

- [Firebase iOS SDK Official Repository](https://github.com/firebase/firebase-ios-sdk)
- [Firebase Documentation](https://firebase.google.com/docs)
- [Swift Package Manager Documentation](https://swift.org/package-manager/)

---

**Note**: This package is designed for convenience and faster build times. If you need the latest features immediately upon release or require source-level debugging of Firebase code, consider using the official Firebase iOS SDK directly.
