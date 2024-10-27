//
//  Hedges Objects.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/27/23.
//

import SwiftUI

struct HedgesController {
    var observableObjects: [ObjectType: Object] = [
        .branch: Object(
            imageName: "Branch",
            imageGlowName: "ObsGlo - Branch",
            message: "A long, spindly branch, discarded.\nIt must have broken off one of the bushes."
        ),
        .ivyVinesBase: Object(
            imageName: "Ivy Vines - Base",
            imageGlowName: "ObsGlo - Ivy Vines Base",
            message: "This ivy leads up the side of the house.\nI could probably climb it from here!"
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .branch: Object(
            imageName: "Branch",
            imageGlowName: "IntGlo - Branch"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .toLivingRoomWindow: Object(imageName: "Arrow - Up"),
        .back: Object(imageName: "Arrow - Back")
    ]
}


//MARK: UI Models - Observable
struct Branch_ObservableButton: View {
    var body: some View {
        Button("Branch") {
            
        }
        .frame(width: 200, height: 50)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: -300, y: 250)
    }
}

struct IvyVinesBase_ObservableButton: View {
    var body: some View {
        Button("Ivy Vines Base") {
            
        }
        .frame(width: 300, height: 600)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 400, y: -100)
    }
}

//MARK: UI Models - Interactable
struct Branch_InteractableButton: View {
    var body: some View {
        Button("Branch") {
            
        }
        .frame(width: 200, height: 50)
        .background(Color.indigo.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: -300, y: 250)
    }
}

//MARK: UI Models - Navigational
struct ToLivingRoomWindow_NavigationalButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("To Living Room Window")
            Image(systemName: "arrow.up.to.line")
        }
        .frame(width: 110, height: 70)
        .background(Color.yellow.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 400, y: -100)
    }
}
