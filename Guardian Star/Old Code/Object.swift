//
//  Object.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/23/23.
//

import SwiftUI

struct Object: Equatable {
    let imageName: String
    
    var imageGlowName: String? = nil
    var message: String? = nil
    
    let objectID = UUID()
    
    static func == (lhs: Object, rhs: Object) -> Bool {
        return lhs.objectID == rhs.objectID
    }
}

enum ObjectType: CaseIterable {
    //"to" objects are for navigation only
    case back //back arrow; for backwards navigation
    
    // MARK: Backyard Locations
    case hedges, ivyVines, livingRoomWindow, bedroomWindow //Backyard
    case branch, ivyVinesBase, toLivingRoomWindow //Hedges
    case livingRoomWindowFrame, ivyVinesStalk, toBedroomWindow, toLivingRoom //Living Room Window
    case bedroomWindowFrame, ivyVinesTips //Bedroom Window
    
    // MARK: Living Room Locations
    case poolTable, chair, movedChair, hallwayDoor, lowTable, toPoolTable, toHallwayDoorGap, toLowTable, toHallwayDoorHandle, toHallway //Living Room
    case poolCue, poolCueMoved, poolBall, poolBallMoved //Pool Table
    case twine //Low Table
    case doorGap, key //Hallway Door
    case lock //Hallway Doorknob
    
    //MARK: Hallway Locations
    case archBlock, stairs, doors, toLanding //Hallway
    case rectangleBlock, toUpstairs //Landing
    
    //MARK: Upstairs Locations
    case triangleBlock, consoleTable, vent, screenedVent, openVent, daisysDoor, toConsoleTable //Upstairs
    case daisysDoorknob, bookshelf, bookmark, toVent //Console Table
    case ventUpClose, screenedVentUpClose, openVentUpClose, toDaisy //Vent
    
// Custom String Convertable; Not current necessary, but may be wanted in the future
//    var description: String {
//        switch self {
//        case .bushes: return "Bushes"
//        case .ivyVines: return "Ivy Vines"
//        case .livingRoomWindow: return "Living Room Window"
//        case .bedroomWindow: return "Bedroom Window"
//
//        case .twine: return "Twine"
//        case .poolCue: return "Pool Cue"
//        case .poolBall: return "Pool Ball"
//        case .chair: return "Chair"
//        case .hallwayDoor: return "Hallway Door"
//
//        case .archBlock: return "Arch Block"
//        case .rectangularBlock: return "Rectangular Block"
//        case .stairs: return "Stairs"
//
//        case .triangularBlock: return "Triangle Block"
//        case .daisysDoor: return "Daisy's Door"
//        case .cabinet: return "Cabinet"
//        case .bookshelf: return "Bookshelf"
//        case .vent: return "Vent"
//        }
//    }
}
