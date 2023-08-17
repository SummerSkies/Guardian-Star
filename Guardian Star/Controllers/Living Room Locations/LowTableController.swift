//
//  LowTableController.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/27/23.
//

import SwiftUI

struct LowTableController {
    var observableObjects: [ObjectType: Object] = [
        .twine: Object(
            imageName: "Twine",
            imageGlowName: "ObsGlo - Twine",
            message: "Twine... that could come in handy."
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .twine: Object(
            imageName: "Twine",
            imageGlowName: "IntGlo - Twine"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .back: Object(imageName: "Arrow - Back")
    ]
}

//MARK: UI Models - Observable
struct Twine_ObservableButton: View {
    var body: some View {
        Button("Twine") {
            print("Twine tapped!")
        }
        .frame(width: 200, height: 200)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 200, y: -200)
    }
}

//MARK: UI Models - Interactable
struct Twine_InteractableButton: View {
    var body: some View {
        Button("Twine") {
            print("Twine tapped!")
        }
        .frame(width: 200, height: 200)
        .background(Color.indigo.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 200, y: -200)
    }
}
