//
//  Hallway.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/23/23.
//

import SwiftUI

struct HallwayController {
    var observableObjects: [ObjectType: Object] = [
        .archBlock: Object(
            imageName: "Arch Block",
            imageGlowName: "ObsGlo - Arch Block",
            message: "Daisy used to play with blocks like this when she was younger.\nWhat is it doing out of the box?"
        ),
        .stairs: Object(
            imageName: "Stairs",
            imageGlowName: "ObsGlo - Stairs",
            message: "Those stairs lead to the second floor."
        ),
        .doors: Object(
            imageName: "Doors",
            imageGlowName: "ObsGlo - Doors",
            message: "All empty.\nWhere are Daisy's parents?"
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .archBlock: Object(
            imageName: "Arch Block",
            imageGlowName: "IntGlo - Arch Block"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .toLanding: Object(imageName: "Arrow - Foward"),
        .back: Object(imageName: "Arrow - Back")
    ]
}

//MARK: UI Models - Observeable
struct ArchBlock_ObservableButton: View {
    var body: some View {
        Button("Arch Block") {
            print("Arch Block tapped!")
        }
        .frame(width: 120, height: 80)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 125, y: 100)
    }
}

struct Stairs_ObservableButton: View {
    var body: some View {
        Button("Stairs") {
            print("Stairs tapped!")
        }
        .frame(width: 300, height: 200)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 0, y: -60)
    }
}

struct Doors_ObservableButton: View {
    var body: some View {
        Button("Doors") {
            print("Doors tapped!")
        }
        .frame(width: 800, height: 650)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 0, y: -80)
    }
}

//MARK: UI Models - Interactable
struct ArchBlock_InteractableButton: View {
    var body: some View {
        Button("Arch Block") {
            print("Arch Block tapped!")
        }
        .frame(width: 120, height: 80)
        .background(Color.indigo.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 125, y: 100)
    }
}

//MARK: UI Models - Navigational
struct ToLanding_NavigationalButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("To Landing")
            Image(systemName: "arrow.up.to.line")
        }
        .frame(width: 110, height: 70)
        .background(Color.yellow.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 0, y: -60)
    }
}
