<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->
## Table of Contents
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
        <li><a href="#iOS Integration">iOS Integration</a></li>
        <li><a href="#Android Integration">Android Integration</a></li>
      </ul>
    </li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>


<!-- ABOUT THE PROJECT -->
## About The Project

The objective of this project is to objectively demonstrate how to use the device's native biometrics for user authentication and redirection in case of confirmation using dynamic routes (handling the error in case of missing route).

In this project you will see:

    * Handling Lottie animations through json

    * Responsiveness
    
    * Flutter widgets like: Container, Scaffold, Text, Container, FittedBox, SizedBox, FAB etc...
    
    * ... in progressive improvement

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

This project was developed using the technologies below:

<img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white"/> <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white"/>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

Follow the instructions below in the order they are presented in terminal of the project. Just move on to the next step after completing the previous one.

### Prerequisites

1. Lottie library

```sh
  https://pub.dev/packages/lottie
  ```

2Local Auth library

```sh
  https://pub.dev/packages/local_auth
  ```

### Installation

1. flutter pub add lottie
2. 1. flutter pub add local_auth

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### iOS Integration

Note that this plugin works with both Touch ID and Face ID. However, to use the latter, you need to also add:

<key>NSFaceIDUsageDescription</key>
<string>Why is my app authenticating using face id?</string>

to your Info.plist file. Failure to do so results in a dialog that tells the user your app has not been updated to use Face ID.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Android Integration

* The plugin will build and run on SDK 16+, but isDeviceSupported() will always return false before SDK 23 (Android 6.0).
  Activity Changes

Note that local_auth requires the use of a FragmentActivity instead of an Activity. To update your application:
```sh
    If you are using FlutterActivity directly, change it to FlutterFragmentActivity in your AndroidManifest.xml.

    If you are using a custom activity, update your MainActivity.java:

      import io.flutter.embedding.android.FlutterFragmentActivity;

      public class MainActivity extends FlutterFragmentActivity {
          // ...
      }

    or MainActivity.kt:

      import io.flutter.embedding.android.FlutterFragmentActivity

      class MainActivity: FlutterFragmentActivity() {
          // ...
      }

    to inherit from FlutterFragmentActivity.
  ```
* Permissions

Update your project's AndroidManifest.xml file to include the USE_BIOMETRIC permissions:
```sh
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
package="com.example.app">
<uses-permission android:name="android.permission.USE_BIOMETRIC"/>
<manifest>
```

* Compatibility

On Android, you can check only for existence of fingerprint hardware prior to API 29 (Android Q). Therefore, if you would like to support other biometrics types (such as face scanning) and you want to support SDKs lower than Q, do not call getAvailableBiometrics. Simply call authenticate with biometricOnly: true. This will return an error if there was no hardware available.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/contribution`)
3. Commit your Changes (`git commit -m 'Add some contribution'`)
4. Push to the Branch (`git push origin feature/contribution`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

Danilo Monteiro Souza - [Linkedin](linkedin.com/in/danilo-monteiro-souza-m-sc-771131a9)

Project Link: [https://github.com/danilomonteirosouza/check-biometrics](https://github.com/danilomonteirosouza/check-biometrics)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

