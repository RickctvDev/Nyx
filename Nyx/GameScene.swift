//
//  Game.swift
//  Nyx
//
//  Created by Rick Crane on 19/01/2016.
//  Copyright © 2016 Rick Crane. All rights reserved.
//

import SpriteKit
import AVFoundation

class GameScene: SKScene, AVAudioPlayerDelegate {
    
    var audioPlayer = SoundPlayer(trackName: "Scary")
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        self.backgroundColor = UIColor.blackColor()
        audioPlayer.playForever()
        
        print("IN THE NEW GAME SCENE!!")
        
    }
    
}
