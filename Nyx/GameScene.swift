//
//  GameScene.swift
//  Nyx
//
//  Created by Rick Crane on 18/01/2016.
//  Copyright (c) 2016 Rick Crane. All rights reserved.
//

import SpriteKit
import AVFoundation

class GameScene: SKScene, AVAudioPlayerDelegate {
    //Properties
    var title = SKLabelNode(text: "Nyx")
    var audioPlayer = SoundPlayer(trackName: "Scary")
    
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        self.backgroundColor = UIColor.blackColor()
        createTitle()
        createTitleButtons()
        audioPlayer.playForever()
        
    }
    
    func createTitleButtons(){
        let startButton = MainMenuButton(buttonText: "Start")
        addChild(startButton._button)
        
        let quitButton = MainMenuButton(buttonText: "Quit")
        quitButton._button.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(startButton._button.frame) - quitButton._button.frame.size.height * 1.5)
        addChild(quitButton._button)
    }
    
    func createTitle(){
        title.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMaxY(self.frame) - title.frame.size.height - 50)
        title.fontSize = 52
        title.fontColor = UIColor.whiteColor()
        title.fontName = "Courier-Bold"
        addChild(title)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
    
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
