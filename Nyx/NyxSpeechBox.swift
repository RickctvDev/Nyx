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

class NyxSpeechBox {
    var textCell: SKSpriteNode!
    var currentMessage = NyxSpeechText.init().SHOWTEXT
    
    init(){
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
        let labelNode = SKLabelNode()
        labelNode.text = currentMessage
        
        labelNode.fontName = "Courier-Bold"
        labelNode.fontColor = UIColor.whiteColor()
        labelNode.fontSize = 20
        labelNode.zPosition = 1
        labelNode.position = CGPointMake(CGRectGetMidX(textCell.frame), CGRectGetMidY(textCell.frame))
        
        //Add label Node to TextCell
        textCell.addChild(labelNode)
    }
}


