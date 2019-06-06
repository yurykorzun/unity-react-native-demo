# unity-react-native-demo
Demo of a Unity project with React Native integration
 
This repo is supposed to show an example of a Unity project with React Native app integrated into it. 
Unfortunately, XCode project that is exported with Unity >2017 breaks React Native rendering.
It works as expected with an Android project and an XCode project generated for to run on a Simulator.

How to test this project:
1. Navigate to folder ReactNative
2. Run yarn install
3. Open XCode project iosUnity and run on a device

This is a simple React Native view that I am trying to render:
```js
  <View style={{flex: 1}}>
    <View style={{flex:0.3, justifyContent: 'center', alignItems: 'center', borderWidth: 2, borderColor: 'red'}}>
      <Text>Top</Text>
    </View>
    <View  style={{flex:1, justifyContent: 'center', alignItems: 'center', borderWidth: 2, borderColor: 'green'}}>
      <Text>Second</Text>
    </View>
    <View  style={{flex:1, justifyContent: 'center', alignItems: 'center', borderWidth: 2, borderColor: 'grey'}}>
      <Text>Thrid</Text>
    </View>
    <View  style={{flex:0.2, justifyContent: 'center', alignItems: 'center', borderWidth: 2, borderColor: 'blue'}}>
      <Text>Bottom</Text>
    </View>
  </View>)
```
This is how it is rendered in a standalone React Native app and on with Unity on a Simulator:
<div><img src="https://github.com/yurykorzun/unity-react-native-demo/blob/master/Screenshots/Screenshot_unity_ios_rn_simulator.png?raw=true" width="350"/></div>


This is how it is rendered in a Unity project:
<div><img src="https://github.com/yurykorzun/unity-react-native-demo/blob/master/Screenshots/Screenshot_unity_ios_rn_device.png?raw=true" width="350"/></div>

Environment:
Unity 2019.1.4f1
React Native Environment Info:
    System:
      OS: macOS 10.14.5
      CPU: (4) x64 Intel(R) Core(TM) i5-3210M CPU @ 2.50GHz
      Memory: 3.73 GB / 16.00 GB
      Shell: 3.2.57 - /bin/bash
    Binaries:
      Node: 12.3.1 - /usr/local/bin/node
      Yarn: 1.16.0 - /usr/local/bin/yarn
      npm: 6.9.0 - /usr/local/bin/npm
      Watchman: 4.9.0 - /usr/local/bin/watchman
    SDKs:
      iOS SDK:
        Platforms: iOS 12.2, macOS 10.14, tvOS 12.2, watchOS 5.2
      Android SDK:
        API Levels: 22, 23, 24, 25, 26, 27, 28
        Build Tools: 25.0.3, 26.0.2, 26.0.3, 27.0.3, 28.0.2, 28.0.3
        System Images: android-22 | Intel x86 Atom_64, android-23 | Intel x86 Atom_64, android-25 | Google APIs Intel x86 Atom, android-25 | Google APIs Intel x86 Atom_64, android-26 | Google Play Intel x86 Atom, android-27 | Google APIs Intel x86 Atom, android-27 | Google Play Intel x86 Atom, android-28 | Google Play Intel x86 Atom
    IDEs:
      Android Studio: 3.2 AI-181.5540.7.32.5014246
      Xcode: 10.2.1/10E1001 - /usr/bin/xcodebuild
    npmPackages:
      react: 16.8.3 => 16.8.3 
      react-native: 0.59.9 => 0.59.9 
    npmGlobalPackages:
      react-native-cli: 2.0.1
