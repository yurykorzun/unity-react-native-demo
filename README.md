# unity-react-native-demo
Demo of a Unity project with React Native integration
 
This repo is supposed to show an example of a Unity project with React Native app integrated into it. 
Unfortunately, XCode project that is exported with Unity >2017 breaks React Native rendering.
It works as expected with an Android project and an XCode project generated for to run on a Simulator.

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
This is how it is rendered in a standalone React Native app:
![Normal rendering](https://github.com/yurykorzun/unity-react-native-demo/blob/master/Screenshots/Screenshot_unity_ios_rn_simulator.png?raw=true)

This is how it is rendered in a Unity project:
![Normal rendering](https://github.com/yurykorzun/unity-react-native-demo/blob/master/Screenshots/Screenshot_unity_ios_rn_device.png?raw=true)
