//
//  StatsBoard.swift
//  Nyx
//
//  Created by Rick Crane on 19/01/2016.
//  Copyright © 2016 Rick Crane. All rights reserved.
//

import Foundation
import SpriteKit

class StatsBoard{
    //Stats To Change
    let statsBoardPopOutMoveSpeed: Double = 0.5
    
    //OtherProperties
    var _health: SKLabelNode!
    var _level: SKLabelNode!
    var _experience: SKLabelNode!
    var _hunger: SKLabelNode!
    var _thirst: SKLabelNode!
    var _status: SKLabelNode!
    var _attitude: SKLabelNode!
    var _weapongDuribilty: SKLabelNode!
    
    
    var _statsBoard: SKSpriteNode!
    var isOut = false
    
    init(){
        makeStatsBoard()
        setUpStats()
    }

    func popOutorIn(){
        let moveOut = SKAction.moveByX(_statsBoard.frame.size.width, y: 0, duration: statsBoardPopOutMoveSpeed)
        let moveIn = SKAction.moveByX(-_statsBoard.frame.size.width, y: 0, duration: statsBoardPopOutMoveSpeed)
        
        if !isOut{
            _statsBoard.runAction(moveOut)
            isOut = true
        }else if isOut{
            _statsBoard.runAction(moveIn)
            isOut = false
        }
    }
    
    func setUpStats(){
        //Setting Up The Stats Themselves
        _health = SKLabelNode(text: "Health: ")
        _level = SKLabelNode(text: "Level: ")
        _experience = SKLabelNode(text: "Exp: ")
        _hunger = SKLabelNode(text: "Hunger Level: ")
        _thirst = SKLabelNode(text: "Thirst: ")
        _status = SKLabelNode(text: "Status: ")
        _attitude = SKLabelNode(text: "Attitude: ")
        _weapongDuribilty = SKLabelNode(text: "Weapon Duribilty: ")
        
        _health.position = CGPointMake(CGRectGetMinX(_statsBoard.frame) + _health.frame.size.width, CGRectGetMaxY(_statsBoard.frame))
        _health.fontColor = UIColor.blackColor()
        _health.fontName = "Courier-Bold"
        _statsBoard.addChild(_health)
        print(_health.position)
        print(_health.fontSize)
    }
    
    func makeStatsBoard(){
        //Setting Up The Stat Board
        _statsBoard = SKSpriteNode(imageNamed: "StatsBoard")
        _statsBoard.name = "Board"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}