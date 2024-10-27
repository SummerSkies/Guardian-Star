//
//  HallwayDoorknobController.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct HallwayDoorknobController {
    var observableObjects: [ObjectType: Object] = [
        .lock: Object(
            imageName: "Hallway Lock",
            imageGlowName: "ObsGlo - Hallway Lock",
            message: "It's locked...?\nI need a key."
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .lock: Object(
            imageName: "Hallway Lock",
            imageGlowName: "IntGlo - Hallway Lock"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .back: Object(imageName: "Arrow - Back")
    ]
}

//MARK: UI Models - Observable
struct Lock_ObservableButton: View {
    var body: some View {
        Button("Lock") {
            print("Lock tapped!")
        }
        .frame(width: 550, height: 200)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 220, y: 0)
    }
}

//MARK: UI Models - Interactable
struct Lock_InteractableButton: View {
    var body: some View {
        Button("Lock") {
            print("Lock tapped!")
        }
        .frame(width: 550, height: 200)
        .background(Color.indigo.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 220, y: 0)
    }
}
