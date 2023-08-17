//
//  VentController.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct VentController {
    var observableObjects: [ObjectType: Object] = [
        .ventUpClose: Object(
            imageName: "Vent - Up Close",
            imageGlowName: "ObsGlo - Vent Up Close"
        ),
        .screenedVentUpClose: Object(
            imageName: "Screened Vent - Up Close",
            imageGlowName: "ObsGlo - Screened Vent Up Close"
        ),
        .openVentUpClose: Object(
            imageName: "Open Vent - Up Close",
            imageGlowName: "ObsGlo - Open Vent Up Close"
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .ventUpClose: Object(
            imageName: "Vent - Up Close",
            imageGlowName: "IntGlo - Vent Up Close"
        ),
        .screenedVentUpClose: Object(
            imageName: "Screened Vent - Up Close",
            imageGlowName: "IntGlo - Screened Vent Up Close"
        ),
        .openVentUpClose: Object(
            imageName: "Open Vent - Up Close",
            imageGlowName: "IntGlo - Open Vent Up Close"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .toDaisy: Object(imageName: "Arrow - Up"),
        .back: Object(imageName: "Arrow - Down")
    ]
}

//MARK: UI Models - Observeable
struct VentUpClose_ObservableButton: View {
    var body: some View {
        Button("Vent - Up Close") {
            print("Vent tapped!")
        }
       .frame(width: 400, height: 400)
       .background(Color.secondary)
       .foregroundColor(Color.white)
       .offset(x: 0, y: -100)
    }
}

struct ScreenedVentUpClose_ObservableButton: View {
    var body: some View {
        Button("Screened Vent - Up Close") {
            print("Screened Vent tapped!")
        }
       .frame(width: 400, height: 400)
       .background(Color.secondary)
       .foregroundColor(Color.white)
       .offset(x: 0, y: -100)
    }
}

struct OpenVentUpClose_ObservableButton: View {
    var body: some View {
        Button("Open Vent - Up Close") {
            print("Open Vent tapped!")
        }
       .frame(width: 400, height: 400)
       .background(Color.secondary)
       .foregroundColor(Color.white)
       .offset(x: 0, y: -100)
    }
}

//MARK: UI Models - Interactable
struct VentUpClose_InteractableButton: View {
    var body: some View {
        Button("Vent - Up Close") {
            print("Vent tapped!")
        }
       .frame(width: 400, height: 400)
       .background(Color.indigo.opacity(0.6))
       .foregroundColor(Color.white)
       .offset(x: 0, y: -100)
    }
}

struct ScreenedVentUpClose_InteractableButton: View {
    var body: some View {
        Button("Screened Vent - Up Close") {
            print("Screened Vent tapped!")
        }
       .frame(width: 400, height: 400)
       .background(Color.indigo.opacity(0.6))
       .foregroundColor(Color.white)
       .offset(x: 0, y: -100)
    }
}

struct OpenVentUpClose_InteractableButton: View {
    var body: some View {
        Button("Open Vent - Up Close") {
            print("Open Vent tapped!")
        }
       .frame(width: 400, height: 400)
       .background(Color.indigo.opacity(0.6))
       .foregroundColor(Color.white)
       .offset(x: 0, y: -100)
    }
}

//MARK: UI Models - Navigational
struct ToDaisy_NavigationalButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("To Daisy")
            Image(systemName: "arrow.up")
        }
        .frame(width: 110, height: 70)
        .background(Color.yellow.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 0, y: -100)
    }
}

