
'use strict';

import { NativeModules, NativeEventEmitter } from 'react-native';

const { RNPlayerMusic } = NativeModules;

class RNPlayerMusic {

    static play(songName) {
        return new Promise((resolve, reject) => {
            RNPlayerMusic.play(songName, res => {
                resolve(res);
            })
        });
    }

    static stop() {
        RNPlayerMusic.stop();
    }

}

export default RNPlayerMusic;
