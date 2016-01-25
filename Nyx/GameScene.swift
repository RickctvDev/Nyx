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
    let questionLeft = QuestionBox(withText: "No").box
    let questionRight = QuestionBox(withText: "Yes").box
    var tappedScreen : Int = 0
    var Level : Int!
    var chosenLevel = NyxSpeechBox().textCell

    //This is used in nextBoxAppears (POSSIBLE CHANGE SOON)
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        self.backgroundColor = UIColor.blackColor()
        audioPlayer.playForever()
        makeQuestionButtons()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print(tappedScreen)
        
        for touch: AnyObject in touches {
            let location = (touch as! UITouch).locationInNode(self)
            
            if let theName = self.nodeAtPoint(location).name {
                
                if theName == "Right"
                {
                    print("TOUCHED RIGHT")
                    nextBoxAppears()
                    tappedScreen++
                    
                }else if theName == "Left"
                {
                    print("TOUCHED LEFT!")
                    nextBoxAppears()
                    tappedScreen++
                }
            }
        }
        //OUT OF TESTING HERE!! WRITE ANY OTHER CODE HERE!!
    }
    
    func makeQuestionButtons(){
        self.addChild(questionLeft)
        self.addChild(questionRight)
        questionLeft.name = "Left"
        questionRight.name = "Right"
        questionLeft.position = CGPointMake(CGRectGetMinX(self.frame) + questionLeft.frame.size.width / 2 + 50, CGRectGetMinY(self.frame) + questionLeft.frame.size.height * 2)
        questionRight.position = CGPointMake(CGRectGetMaxX(self.frame) - questionRight.frame.size.width / 2 - 50, CGRectGetMinY(self.frame) + questionRight.frame.size.height * 2)
    }
    
    func nextBoxAppears(){
        levelSelect(2)
    }
    
    func levelSelect(levelIs: Int){
        chosenLevel  = NyxSpeechBox.init(level: levelIs, sentence: tappedScreen + 1).textCell
        self.addChild(chosenLevel)
    }
}
