//
//  SoundPlayer.swift
//  Nyx
//
//  Created by Rick Crane on 18/01/2016.
//  Copyright © 2016 Rick Crane. All rights reserved.
//

import Foundation
import AVFoundation

class SoundPlayer: AVAudioPlayer {
    
    var sound = AVAudioPlayer!()
    var track: String!
    
    init(trackName: String) {
        track = trackName
        let url = NSBundle.mainBundle().URLForResource(trackName, withExtension: "mp3")!
        
        do { sound = try AVAudioPlayer(contentsOfURL: url, fileTypeHint: nil) } catch let error as NSError {
            print(error.description)
        }
        super.init()
    }
    
    func playForever(){
        sound.numberOfLoops = -1
        sound.prepareToPlay()
        sound.play()
    }
    
    func playOnce(){
        sound.numberOfLoops = 0
        sound.prepareToPlay()
        sound.play()
    }
    
    func playNextTrack(trackName: String, forever: Bool){
        sound.stop()
        
        track = trackName
        let url = NSBundle.mainBundle().URLForResource(trackName, withExtension: "mp3")!
        
        do { sound = try AVAudioPlayer(contentsOfURL: url, fileTypeHint: nil) } catch let error as NSError {
            print(error.description)
        }
        
        if forever == true{
            sound.numberOfLoops = -1
            sound.prepareToPlay()
            sound.play()
        }else{
            sound.numberOfLoops = 0
            sound.prepareToPlay()
            sound.play()
        }
        
        

        
    }

}
