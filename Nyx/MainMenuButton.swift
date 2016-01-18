//
//  MainMenuButton.swift
//  Nyx
//
//  Created by Rick Crane on 18/01/2016.
//  Copyright © 2016 Rick Crane. All rights reserved.
//

import Foundation
import SpriteKit

class MainMenuButton{
    let _button: SKSpriteNode!
    let _buttonText: SKLabelNode!
    
    init(buttonText: String, buttonName: String){
        _button = SKSpriteNode(imageNamed: "MainMenuButton")
        _button.name = buttonName
        
        _buttonText = SKLabelNode(text: buttonText)
        _button.size = CGSizeMake(_button.frame.size.width - 60, 100)
        _buttonText.fontSize = 50
        _buttonText.fontColor = UIColor.blackColor()
        _buttonText.zPosition = 1
        _buttonText.position = CGPointMake(CGRectGetMidX(_button.frame), CGRectGetMidY(_button.frame) - 15)
        _buttonText.fontName = "Courier-Bold"
        _button.addChild(_buttonText)
    
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
