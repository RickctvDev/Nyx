//
//  GameScene.swift
//  Nyx
//
//  Created by Rick Crane on 18/01/2016.
//  Copyright (c) 2016 Rick Crane. All rights reserved.
//

import SpriteKit
import AVFoundation

class MainMenu: SKScene, AVAudioPlayerDelegate {
    //Properties
    var title = SKLabelNode(text: "Nyx")
    var audioPlayer = SoundPlayer(trackName: "Scary")
    let startButton = MainMenuButton(buttonText: "Start", buttonName: "Start")
    let quitButton = MainMenuButton(buttonText: "Settings", buttonName: "Settings")
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        self.backgroundColor = UIColor.blackColor()
        createTitle()
        createTitleButtons()
        audioPlayer.playForever()
    }
    
    func createTitleButtons(){
        addChild(startButton._button)
        
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
        for touch in touches {
            let location = touch.locationInNode(self)
            
            
            //Check to see which main menu Button was pressed [Will not be NULL]
            if(self.nodeAtPoint(location).name != nil && self.nodeAtPoint(location).name == startButton._button.name) {
                audioPlayer.fadeVolume()
                moveToScene(GameScene(fileNamed: "GameScene"))
            }
            if(self.nodeAtPoint(location).name != nil && self.nodeAtPoint(location).name == quitButton._button.name) {
                print("Touched Settings")
            }
        }
    }
    
    func moveToScene(newSceneName: SKScene?){
        if let scene = newSceneName {
            // Configure the view.
            let skView = self.view as SKView!
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .AspectFill
            scene.anchorPoint = CGPointMake(0.5, 0.5)
            skView.presentScene(scene)
        }
    }
}
