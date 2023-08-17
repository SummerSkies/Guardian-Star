//
//  Living Room Window Controller.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/27/23.
//

import SwiftUI

struct LivingRoomWindowController {
    var observableObjects: [ObjectType: Object] = [
        .livingRoomWindowFrame: Object(
            imageName: "Living Room Window Frame",
            imageGlowName: "ObsGlo - Living Room Window Frame",
            message: "This window leads to the living room."
        ),
        .ivyVinesStalk: Object(
            imageName: "Ivy Vines - Stalk",
            imageGlowName: "ObsGlo - Ivy Vines Stalk",
            message: "If I keep climbing, the ivy will take me to Daisy's windows."
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .toBedroomWindow: Object(imageName: "Arrow - Up"),
        .toLivingRoom: Object(imageName: "Arrow - Forward"),
        .back: Object(imageName: "Arrow - Down")
    ]
}

//MARK: UI Models - Observeable
struct LivingRoomWindowFrame_ObservableButton: View {
    var body: some View {
        Button("Living Room Window Frame") {
            
        }
        .frame(width: 700, height: 800)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: -150, y: 0)
    }
}

struct IvyVinesStalk_ObservableButton: View {
    var body: some View {
        Button("Ivy Vines Stalk") {
            
        }
        .frame(width: 300, height: 800)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 400, y: 0)
    }
}

//MARK: UI Models - Navigational
//toBedroomWindow toLivingRoom back
struct ToBedroomWindow_NavigationalButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("To Bedroom Window")
            Image(systemName: "arrow.up")
        }
        .frame(width: 110, height: 70)
        .background(Color.yellow.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 400, y: 0)
    }
}

struct ToLivingRoom_NavigationalButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("To Living Room")
            Image(systemName: "arrow.up.to.line")
        }
        .frame(width: 110, height: 70)
        .background(Color.yellow.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: -150, y: 0)
    }
}
