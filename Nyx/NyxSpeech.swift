//
//  NyxSpeech.swift
//  Nyx
//
//  Created by Rick Crane on 19/01/2016.
//  Copyright © 2016 Rick Crane. All rights reserved.
//
//
// NEED TO MAKE THE COMMENTS COME FROM BOTTOM AND GO TO THE MIDDLE
// ENSURE THAT THREE COMMENTS CAN BE SEEN ON THE SCREEN AT ANY GIVEN TIME
// FIGURE OUT HOW TO SAVE MEMORY AND NOT KEEP ALL NODES ON THE SCREEN - AIM FOR 20 COMMENTS MAX
//

import Foundation
import SpriteKit

class NyxSpeech {
    var textCell: SKSpriteNode!
    
    init(withText: String){
        //NEEDED PROPERTIES
        let gameScene = UIScreen.mainScreen().bounds
        
        
        //Make Text Box
        textCell = SKSpriteNode(imageNamed: "SpeechBox")
        textCell.size = CGSizeMake(gameScene.width, 200)
        textCell.position = CGPointMake(0, 0)
        
        //Movement of Text Box
        let moveUpFromBottom = SKAction.moveByX(0, y: CGRectGetMidY(gameScene), duration: 1)
        _ = textCell.runAction(moveUpFromBottom)
        
        //LabelNode
        let labelNode = SKLabelNode(text: "\(withText)")
        labelNode.text = withText
        labelNode.fontName = "Courier-Bold"
        labelNode.fontColor = UIColor.whiteColor()
        labelNode.fontSize = 42
        labelNode.zPosition = 1
        
        //Add label Node to TextCell
        textCell.addChild(labelNode)
    }
    
    func nextBox(){
        // possible make this the function in the class (MOVE FROM GAMESCENE Controller to avoide confusion)
        print("NEW BOX APPEARED")
    }
}


