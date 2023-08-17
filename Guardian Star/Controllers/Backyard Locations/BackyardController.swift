//
//  Backyard Objects.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/23/23.
//

import SwiftUI

struct BackyardController {
    var observableObjects: [ObjectType: Object] = [
        .hedges: Object(
            imageName: "Hedges",
            imageGlowName: "ObsGlo - Hedges",
            message: "The hedges have been looking a little unkempt lately."
        ),
        .ivyVines: Object(
            imageName: "Ivy Vines",
            imageGlowName: "ObsGlo - Ivy Vines",
            message: "I wonder if I could climb that ivy up to Daisy's window.\nI'll have to start at the base, through the hedges."
        ),
        .livingRoomWindow: Object(
            imageName: "Living Room Window",
            imageGlowName: "ObsGlo - Living Room Window",
            message: "Someone forgot to close the window.\nDaisy's mama must not be home."
        ),
        .bedroomWindow: Object(
            imageName: "Bedroom Window",
            imageGlowName: "ObsGlo - Bedroom Window",
            message: "Daisy's bedroom is up there."
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .hedges: Object(imageName: "Arrow - Forward")
    ]
}

//MARK: UI Models - Observable
struct BedroomWindows_ObservervableButton: View {
    var body: some View {
        Button("Bedroom Windows") {
            print("Observed Bedroom Windows.")
        }
        .frame(width: 270, height: 192)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 110, y: 23)
    }
}

struct LivingRoomWindow_ObservervableButton: View {
    var body: some View {
        Button("Living Room Window") {
            print("Living Room Window tapped!")
        }
        .frame(width: 100, height: 162)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 181, y: 234)
    }
}

struct IvyVines_ObservervableButton: View {
    var body: some View {
        Button("Ivy Vines") {
            print("Ivy Vines tapped!")
        }
        .frame(width: 100, height: 280)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 281, y: 175)
    }
}

struct Hedges_ObservervableButton: View {
    var body: some View {
        Button("Hedges") {
            print("Hedges tapped!")
        }
        .frame(width: 427, height: 80)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 158, y: 325)
    }
}

//MARK: UI Models - Navigational
struct ToHedges_NavigationalButton: View {
    var body: some View {
        Button {
            print("Hedges tapped!")
        } label: {
            Text("To Hedges")
            Image(systemName: "arrow.up.to.line")
        }
        .frame(width: 110, height: 70)
        .background(Color.yellow.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 158, y: 325)
    }
}
