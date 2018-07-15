
import { NativeModules, NativeEventEmitter } from 'react-native';

const { RNPlayerMusicModule } = NativeModules;

class RNPlayerMusic {

    static play(songName) {
        return new Promise((resolve, reject) => {
            RNPlayerMusicModule.play(songName, res => {
                resolve(res);
            });
        });
    }

    static stop() {
        RNPlayerMusicModule.stop();
    }

}

export default RNPlayerMusic;
