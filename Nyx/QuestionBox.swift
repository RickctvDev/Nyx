//
//  QuestionBox.swift
//  Nyx
//
//  Created by Rick Crane on 24/01/2016.
//  Copyright © 2016 Rick Crane. All rights reserved.
//

import Foundation
import SpriteKit

class QuestionBox {
    
    let gameScene = UIScreen.mainScreen().bounds
    
    var box = SKSpriteNode(imageNamed: "QuestionButton")
    var boxTextMessage = "Yes"
    
    init(withText: String){
        let boxText = SKLabelNode()
        box.size = CGSizeMake(box.frame.size.width / 2, box.frame.size.height / 2)
        box.name = "BOX"
        boxText.text = withText
        boxText.zPosition = 1
        boxText.fontSize = 42
        boxText.fontName = "Courier-Bold"
        boxText.position = CGPointMake(CGRectGetMidX(box.frame), CGRectGetMidY(box.frame))
        box.addChild(boxText)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
