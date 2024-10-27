//
//  HallwayDoorController.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct HallwayDoorGapController {
    var observableObjects: [ObjectType: Object] = [
        .doorGap: Object(
            imageName: "Hallway Door Gap",
            imageGlowName: "ObsGlo - Hallway Door Gap"
        ),
        .key: Object(
            imageName: "Key",
            imageGlowName: "ObsGlo - Key",
            message: "Is that... A key? Why is it here?"
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .key: Object(
            imageName: "Key",
            imageGlowName: "IntGlo - Key"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .back: Object(imageName: "Arrow - Back")
    ]
}

//MARK: UI Models - Observable
struct DoorGap_ObservableButton: View {
    var body: some View {
        Button("Door Gap") {
            print("Door Gap tapped!")
        }
        .frame(width: 900, height: 160)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 0, y: 180)
    }
}

struct Key_ObservableButton: View {
    var body: some View {
        Button("Key") {
            print("Key tapped!")
        }
        .frame(width: 300, height: 70)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 120, y: 180)
    }
}

//MARK: UI Models - Interactable
struct Key_InteractableButton: View {
    var body: some View {
        Button("Key") {
            print("Key tapped!")
        }
        .frame(width: 300, height: 70)
        .background(Color.secondary)
        .foregroundColor(Color.indigo.opacity(0.6))
        .offset(x: 120, y: 180)
    }
}
