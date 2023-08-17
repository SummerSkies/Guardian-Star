//
//  Upstairs Objects.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/23/23.
//

import SwiftUI

struct UpstairsController {
    var observableObjects: [ObjectType: Object] = [
        .triangleBlock: Object(
            imageName: "Rectangle Block",
            imageGlowName: "ObsGlo - Rectangle Block",
            message: "The box this block belongs to isn't even nearby.\nDaisy... What happened?"
        ),
        .consoleTable: Object(
            imageName: "Console Table",
            imageGlowName: "ObsGlo - Console Table",
            message: "I could probably climb atop this console table with something to stand on.\nOr maybe I make a tower from something?"
        ),
        .vent: Object(
            imageName: "Vent",
            imageGlowName: "ObsGlo - Vent"
        ),
        .screenedVent: Object(
            imageName: "Screened Vent",
            imageGlowName: "ObsGlo - Screened Vent",
            message: "The vent is open, but the screen is still in the way."
        ),
        .openVent: Object(
            imageName: "Open Vent",
            imageGlowName: "ObsGlo - Open Vent",
            message: "The vent is completely open now!"
        ),
        .daisysDoor: Object(
            imageName: "Daisy's Door",
            imageGlowName: "ObsGlo - Daisy's Door"
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .triangleBlock: Object(
            imageName: "Rectangle Block",
            imageGlowName: "IntGlo - Rectangle Block"
        ),
        .consoleTable: Object(
            imageName: "Console Table",
            imageGlowName: "IntGlo - Console Table"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .toConsoleTable: Object(imageName: "To Console Table"),
        .back: Object(imageName: "Arrow - Back")
    ]
}

//MARK: UI Models - Observeable
struct DaisysDoor_ObservableButton: View {
    var body: some View {
        Button("Daisy's Door") {
            print("Daisy's Door tapped!")
        }
       .frame(width: 200, height: 440)
       .background(Color.secondary)
       .foregroundColor(Color.white)
       .offset(x: -100, y: -30)
    }
}

struct ConsoleTable_ObservableButton: View {
    var body: some View {
        Button("Console Table") {
            print("Console Table tapped!")
        }
       .frame(width: 270, height: 130)
       .background(Color.secondary)
       .foregroundColor(Color.white)
       .offset(x: 135, y: 142)
    }
}

struct Vent_ObservableButton: View {
    var body: some View {
        Button("Vent") {
            print("Vent tapped!")
        }
        .frame(width: 100, height: 40)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 95, y: -335)
    }
}

struct ScreenedVent_ObservableButton: View {
    var body: some View {
        Button("Screened Vent") {
            print("Screened Vent tapped!")
        }
        .frame(width: 87, height: 56)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 97, y: -287)
    }
}

struct OpenVent_ObservableButton: View {
    var body: some View {
        Button("Open Vent") {
            print("Open Vent tapped!")
        }
        .frame(width: 87, height: 56)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 97, y: -287)
    }
}

struct TriangleBlock_ObservableButton: View {
    var body: some View {
        Button("Triangle Block") {
            print("Triangle Block tapped!")
        }
        .frame(width: 110, height: 70)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: -240, y: 280)
    }
}

//MARK: UI Models - Interactable
struct ConsoleTable_InteractableButton: View {
    var body: some View {
        Button("Console Table") {
            print("Console Table tapped!")
        }
       .frame(width: 270, height: 130)
        .background(Color.indigo.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 135, y: 142)
    }
}

struct TriangleBlock_InteractableButton: View {
    var body: some View {
        Button("Triangle Block") {
            print("Triangle Block tapped!")
        }
        .frame(width: 110, height: 70)
        .background(Color.indigo.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: -240, y: 280)
    }
}

//MARK: UI Models - Navigational
struct ToConsoleTable_NavigationalButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("To Console Table")
            Image(systemName: "arrow.up")
        }
        .frame(width: 110, height: 70)
        .background(Color.yellow.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 135, y: 142)
    }
}
