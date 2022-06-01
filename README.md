# Flutter App Template

## Installation

1. Download Xcode from the app store [here](https://apps.apple.com/us/app/xcode/id497799835?mt=12).
2. Install the Flutter SDK

```bash
brew install --cask flutter
```

Check that flutter is installed by running:

```bash
flutter --version
```

Output should be similar to:

```bash
Flutter 2.8.1 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 77d935af4d (10 weeks ago) • 2021-12-16 08:37:33 -0800
Engine • revision 890a5fca2e
Tools • Dart 2.15.1
```

3. In your IDE add the flutter & dart extensions,

- for vscode add the Flutter extension from the extension marketplace. This should also add the peer Dart extension.
  ![Open Simulator Menu](/images/flutter-ext.png?raw=true)
- Confirm that the Dart extension is also added and add it if not present
  ![Open Simulator Menu](/images/dart-ext.png?raw=true)

## Running the app

1. After forking the repo, install all dependencies by running the following command in your project directory.

```bash
flutter pub get
```

2. After this open a simulator using Xcode, to do this you can run the following command in the terminal.

```bash
open -a Simulator
```

From this menu you can spin up a simulator. I will be using an iPhone 12 simulator.
![Open Simulator Menu](/images/simulator-select.png?raw=true)

3. To start up the app use

```bash
flutter run
```

OR if using vscode you should run the app by doing the following, this will ensure that you get the full suite of functionality enabled by the Flutter/Dart extensions:
![Open Simulator Menu](/images/run-app.png?raw=true)
