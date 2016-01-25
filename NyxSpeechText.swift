//
//  NyxText.swift
//  Nyx
//
//  Created by Rick Crane on 21/01/2016.
//  Copyright © 2016 Rick Crane. All rights reserved.
//

import Foundation

class NyxSpeechText {
    
    var currentLevel: Int!
    var currentSentence :Int!
    var SHOWTEXT: String!
    var isQuestion: Bool = false
    
    
    let ERROR_ON_LEVEL: String = "SOMETHING WENT WRONG ON LEVEL SECTION!"
    let ERROR_ON_SPEECH: String = "SOMETHING WENT WRONG ON SPEECH.. CONFIRM WHICH LEVEL YOU ARE CURRENTLY ON"
    
    init(level: Int, sentenceNumber: Int){
        currentSentence = sentenceNumber
        currentLevel = level
        
        switch currentLevel {
        //LEVEL 1
        case 1: print("We are at Level \(currentLevel) sentence \(currentSentence)")
        
        //////////////////////LEVEL 1/////////////////////
         
            switch currentSentence {
            case  1: SHOWTEXT = "Please..Hello... Is there somebody there?"
            case  2: SHOWTEXT = "Oh thank god! thank you.. thank you.. thank you... \nI am so glad you answered. \nMy name is Nyx and I am locked inside this shop... \nIt's.. It's called Florence Night..ing or some shit like that."
            case  3: SHOWTEXT = "I don't fucking know! Everyone went crazy and started biting one another. I locked myself in here and chained everything up. Oh God..I don't wanna die, I don't want to die"
            case  4: SHOWTEXT = "I don't know, I just wanted someone to speak to right now. Is this happening where you are?"
            case  5: SHOWTEXT = "Fuck..Well I hope your safe, cause I need all the help I can get right now. I don't know what to do..."
            case  6: SHOWTEXT = "Just be careful! If it's happening here.. you know."
            case  7: SHOWTEXT = "I'm freaking out man... i'm so fucking scared"
            case  8: SHOWTEXT = ".........."
            case  9: SHOWTEXT = "I'm sorry, I'm sorry... er..ye.. It's a little..like corner shop. Should I take a look around?"
            case 10: SHOWTEXT = "Ye.. Ye.. You're right. I should be thinking of this... erm.. Well I need food and shit.. Should I take a look around?"
            case 11: SHOWTEXT = "OK, erm... this thing is charging.. so I've gotta leave it here whilst I look around. Promise me you won't leave me!!"
            case 12: SHOWTEXT = "OK.. I trust you.. I'll contact you once I have done everything ..and.. er... thanks"
                currentLevel = 2
        // ERROR FOUND
            default: print(ERROR_ON_SPEECH)
            }
            
            
            
       //////////////////////LEVEL 2/////////////////////
        case 2: print("We are at Level \(currentLevel) sentence \(currentSentence)")
        //LEVEL 2 SPEECH
            switch currentSentence {
            case 1: ""
            case 2: ""
            case 3: ""
            case 4: ""
            case 5: ""
            case 6: ""
            case 7: ""
            case 8: ""
            case 9: ""
            case 10: ""
            case 11: ""
            case 12: ""
        // ERROR FOUND
            default: print(ERROR_ON_SPEECH)
            }
            
        
        //////////////////////LEVEL 3/////////////////////
        case 3: print("We are at Level \(currentLevel) sentence \(currentSentence)")
        //LEVEL 3 SPEECH
            switch currentSentence {
            case 1: ""
            case 2: ""
            case 3: ""
            case 4: ""
            case 5: ""
            case 6: ""
            case 7: ""
            case 8: ""
            case 9: ""
            case 10: ""
            case 11: ""
            case 12: ""
        // ERROR FOUND
            default: print(ERROR_ON_SPEECH)
            }
            
        //////////////////////LEVEL 4/////////////////////
        case 4: print("We are at Level \(currentLevel) sentence \(currentSentence)")
            
        //////////////////////LEVEL 5/////////////////////
        case 5: print("We are at Level \(currentLevel) sentence \(currentSentence)")
            
        //////////////////////LEVEL 6/////////////////////
        case 6: print("We are at Level \(currentLevel) sentence \(currentSentence)")
            
        //////////////////////LEVEL 7/////////////////////
        case 7: print("We are at Level \(currentLevel) sentence \(currentSentence)")
            
        //////////////////////LEVEL 8/////////////////////
        case 8: print("We are at Level \(currentLevel) sentence \(currentSentence)")
            
        //////////////////////LEVEL 9/////////////////////
        case 9: print("We are at Level \(currentLevel) sentence \(currentSentence)")
            
        //////////////////////LEVEL 10/////////////////////
        case 10: print("We are at Level \(currentLevel) sentence \(currentSentence)")
            
        default: print(ERROR_ON_LEVEL)
        }
    }
    init(){
        
    }
}