//
//  LandingController.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct LandingController {
    var observableObjects: [ObjectType: Object] = [
        .rectangleBlock: Object(
            imageName: "Rectangle Block",
            imageGlowName: "ObsGlo - Rectangle Block",
            message: "These blocks haven't been used for years now."
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .rectangleBlock: Object(
            imageName: "Rectangle Block",
            imageGlowName: "IntGlo - Rectangle Block"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .toUpstairs: Object(imageName: "Arrow - Left"),
        .back: Object(imageName: "Arrow - Left")
    ]
}

//MARK: UI Models - Observeable
struct RectangleBlock_ObservableButton: View {
    var body: some View {
        Button("Rectangle Block") {
            print("Rectangle Block tapped!")
        }
        .frame(width: 120, height: 80)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 300, y: 200)
    }
}

//MARK: UI Models - Interactable
struct RectangleBlock_InteractableButton: View {
    var body: some View {
        Button("Rectangle Block") {
            print("Rectangle Block tapped!")
        }
        .frame(width: 120, height: 80)
        .background(Color.indigo.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 300, y: 200)
    }
}

//MARK: UI Models - Navigational
struct ToUpstairs_NavigationalButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("To Upstairs")
            Image(systemName: "arrow.left")
        }
        .frame(width: 110, height: 70)
        .background(Color.yellow.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 100, y: -60)
    }
}
