//
//  Living Room Objects.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/23/23.
//

import SwiftUI

struct LivingRoomController {
    var observableObjects: [ObjectType: Object] = [
        .poolTable: Object(
            imageName: "Pool Table",
            imageGlowName: "ObsGlo - Pool Table",
            message: "The family pool table.\nDaisy's papa didn't finish playing the last game."
        ),
        .chair: Object(
            imageName: "Chair",
            imageGlowName: "ObsGlo - Chair",
            message: "I don't think that chair is where it usually is."
        ),
        .movedChair: Object(
            imageName: "Moved Chair",
            imageGlowName: "ObsGlo - Moved Chair",
            message: "That chair is positioned so I can reach the hallway doorknob now!"
        ),
        .hallwayDoor: Object(
            imageName: "Hallway Door",
            imageGlowName: "ObsGlo - Hallway Door",
            message: "That door leads to the hallway.\nI'll have to get to the doorknob to open it."
        ),
        .lowTable: Object(
            imageName: "Low Table",
            imageGlowName: "ObsGlo - Low Table",
            message: "That table is often used for arts and crafts.\nLooks like Daisy's mama was working on more homemade decor."
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .chair: Object(
            imageName: "Chair",
            imageGlowName: "IntGlo - Chair"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .toPoolTable: Object(imageName: "Arrow - Forward"),
        .toLowTable: Object(imageName: "Arrow - Forward"),
        .toHallwayDoorGap: Object(imageName: "Arrow - Down"),
        .toHallwayDoorHandle: Object(imageName: "Arrow - Up"),
        .toHallway: Object(imageName: "Arrow - Forward"),
        .back: Object(imageName: "Arrow - Back")
    ]
}

//MARK: UI Models - Observable
struct PoolTable_ObservableButton: View {
    var body: some View {
        Button("Pool Table") {
            print("Pool Table tapped!")
        }
        .frame(width: 445, height: 353)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 452, y: 190)
    }
}

struct Chair_ObservableButton: View {
    var body: some View {
        Button("Chair") {
            print("Chair tapped!")
        }
        .frame(width: 170, height: 300)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 300, y: 40)
    }
}

struct MovedChair_ObservableButton: View {
    var body: some View {
        Button("Moved Chair") {
            print("Moved Chair tapped!")
        }
        .frame(width: 170, height: 300)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 600, y: 40)
    }
}

struct HallwayDoor_ObservableButton: View {
    var body: some View {
        Button("Door") {
            print("Door tapped!")
        }
        .frame(width: 220, height: 500)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 527, y: -130)
    }
}

struct LowTable_ObservableButton: View {
    var body: some View {
        Button("Low Table") {
            print("Low Table tapped!")
        }
        .frame(width: 425, height: 181)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: -385, y: 246)
    }
}

//MARK: UI Models - Interactable
struct Chair_InteractableButton: View {
    var body: some View {
        Button("Chair") {
            print("Chair tapped!")
        }
        .frame(width: 170, height: 300)
        .background(Color.indigo.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 300, y: 40)
    }
}

//MARK: UI Models - Navigational
struct ToPoolTable_NavigationalButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("To Pool Table")
            Image(systemName: "arrow.up.to.line")
        }
        .frame(width: 110, height: 70)
        .background(Color.yellow.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 452, y: 190)
    }
}

struct ToLowTable_NavigationalButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("To Low Table")
            Image(systemName: "arrow.up.to.line")
        }
        .frame(width: 110, height: 70)
        .background(Color.yellow.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: -385, y: 246)
    }
}

struct ToHallwayDoorGap_NavigationalButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("To Hallway Door Gap")
            Image(systemName: "arrow.down")
        }
        .frame(width: 110, height: 70)
        .background(Color.yellow.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 527, y: -60)
    }
}

struct ToHallwayDoorHandle_NavigationalButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("To Hallway Door Handle")
            Image(systemName: "arrow.up.to.line")
        }
        .frame(width: 110, height: 70)
        .background(Color.yellow.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 637, y: -130)
    }
}

struct ToHallway_NavigationalButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("To Hallway")
            Image(systemName: "arrow.up.to.line")
        }
        .frame(width: 110, height: 70)
        .background(Color.yellow.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 527, y: -130)
    }
}
