//
//  Gameplay Controller.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/27/23.
//

import Foundation

struct GameplayController {
    static var currentMode: PlayMode = .none
    
    static func printMessage(_ message: String) {
        print(message)
        //pop-up dialogue box with message.prefix(from: "\n")
        //wait for player tap
        //pop-up dialogue box with message.suffix(from: "\n")
        //wait for player tap
        //dismiss dialogue box
    }
    
    static func pickUpObject(_ object: Object, _ item: Item) {
        //printMessage() object interact message
        //disableObject() object
        //addItemToInventory() item
    }
    
    static func addItemToInventory(_ item: Item) {
        //inventory.append(item)
    }
    
    static func disableObject(_ object: Object) {
        //remove object from scene (no image, disable button)
    }
    
    static func enableObject(_ object: Object) {
        //opposite of disableObject
    }
    
    static func switchMode(to mode: PlayMode) {
        
    }
}
