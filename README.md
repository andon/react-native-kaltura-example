# react-native-kaltura-example
This example [react-native](https://facebook.github.io/react-native/) project tries to use the native SDKs from [Kaltura](https://github.com/kaltura/player-sdk-native-ios) for playing videos.

### Project Setup
```bash
git clone https://github.com/andon/react-native-kaltura-example.git
cd react-native-kaltura-example
npm install (or just yarn)
react-native run-ios
```

### Integration Progress
* First a sample react-native project is [created](https://github.com/andon/react-native-kaltura-example/commit/8f6e3911dfe895e232e2174533514ffeac356490).
* Then kaltura SDK for iOS was [added](https://github.com/andon/react-native-kaltura-example/commit/4130c30552f40f0c37763743831d262add23d453) as a submodule for the example project for convenient purposes and tracking what was used.
* According to the [documentation](https://github.com/kaltura/player-sdk-native-ios#sdk-traditional-installation-) from kaltura's iOS SDK, the traditional installation method was used to [integrate](https://github.com/andon/react-native-kaltura-example/commit/27b0bb3c1d23871a25bfd205299019bb6de0115b) it in the example project.
* In the end, accordint to the react-native [documentation for UI components](https://facebook.github.io/react-native/docs/native-components-ios.html), we [created](https://github.com/andon/react-native-kaltura-example/commit/434c289f9706ac73f189faf7fe5dba3a70bdf79b) a new component that uses Kaltura native iOS player.
* An [improvement](https://github.com/andon/react-native-kaltura-example/commit/2bd08ac3f976130b8e52641d9c8a9348841e590d) was made to use react-native's frame dimensions.

### Issues
The major problem is the player's button in the bottom-right corner. Is there a way to disable of this button (from the protocol methods of the player)? Also, clicking on the button presents Modal View Controller which distrupts react-native view hierarchy and the player is only reposive in the frame part of the wrapped view. The other parts (example the bottom player controls that are now in full-screen) are not responsive. This applies to all actions of the player that display full screen (example share functionality).
