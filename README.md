
# react-native-player-music

## Getting started

`$ npm install react-native-player-music --save`

### Mostly automatic installation

`$ react-native link react-native-player-music`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-player-music` and add `RNPlayerMusic.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNPlayerMusic.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.duongkien.reactnative.RNPlayerMusicPackage;` to the imports at the top of the file
  - Add `new RNPlayerMusicPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-player-music'
  	project(':react-native-player-music').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-player-music/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-player-music')
  	```


## Usage
```javascript
import RNPlayerMusic from 'react-native-player-music';

// TODO: What to do with the module?
RNPlayerMusic;
```
