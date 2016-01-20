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
    //Needed Properties
    var audioPlayer = SoundPlayer(trackName: "Scary")
    let statsBoard = StatsBoard()

    //This is used in nextBoxAppears (POSSIBLE CHANGE SOON)
    var tappedScreen: Int = 0
    
    //Make an array with all of the Scripts in a folder, this is just for testing
    var test1 = ["OMG", "WTF", "HAHAHA", "IT WORKS!!"]
    
    
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        self.backgroundColor = UIColor.blackColor()
        audioPlayer.playForever()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        nextBoxAppears()
    }
    
    func nextBoxAppears(){
        //This pops up the next comment box from NYX. Change over the "Test1" & "Tap Screen" when needed
        // Set up an IF NULL also, to guard from crashes
        self.addChild(NyxSpeech.init(withText: test1[tappedScreen]).textCell)
        tappedScreen++
    }
    func makeStatsScreen(){
        statsBoard._statsBoard.position = CGPointMake(CGRectGetMinX(self.frame) + statsBoard._statsBoard.frame.width / 2, 0)
        statsBoard._statsBoard.size = CGSizeMake(statsBoard._statsBoard.size.width, self.frame.size.height)
        addChild(statsBoard._statsBoard)
    }
}
