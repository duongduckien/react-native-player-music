//
//  RNPlayerMusicModule.swift
//  RNPlayerMusicModule
//
//  Created by Duong Kien on 7/15/18.
//  Copyright © 2018 KienDuong. All rights reserved.
//

import Foundation
import AVFoundation

@objc(RNPlayerMusicModule)
class RNPlayerMusicModule: NSObject {
    
    var bridge: RCTBridge!
    var player: AVAudioPlayer?
    
    @objc func play(_ songName: String, callback: RCTResponseSenderBlock) {
        
        let nameOfFile: String = songName + ".mp3"
        
        let path = Bundle.main.path(forResource: nameOfFile, ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try! AVAudioSession.sharedInstance().setActive(true)
        
        do {
            
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
            let dataCallback: [String: Any] = [
                "status": "success",
                "songName": songName
            ]
            
            callback([dataCallback])
            
        } catch {
            
            let dataCallback: [String: Any] = [
                "status": "error",
                "songName": songName
            ]
            
            callback([dataCallback])
            
        }
        
    }
    
    @objc func stop() {
        player?.stop()
    }
    
}
