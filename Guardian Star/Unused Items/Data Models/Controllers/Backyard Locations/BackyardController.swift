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
            imageGlowName: "Observable Hedges",
            message: "The hedges have been looking a little unkempt lately."
        ),
        .ivyVines: Object(
            imageName: "Ivy Vines",
            imageGlowName: "Observable Ivy Vines",
            message: "I wonder if I could climb that ivy up to Daisy's window.\nI'll have to start at the base, through the hedges."
        ),
        .livingRoomWindow: Object(
            imageName: "Living Room Window",
            imageGlowName: "Observable Living Room Window",
            message: "Someone forgot to close the window.\nDaisy's mama must not be home."
        ),
        .bedroomWindow: Object(
            imageName: "Bedroom Windows",
            imageGlowName: "Observable Bedroom Windows",
            message: "Daisy's bedroom is up there."
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .hedges: Object(imageName: "Arrow - Forward")
    ]
}

//MARK: UI Models - Observable
struct BedroomWindows_ObservableButton: View {
    var body: some View {
        let tappableArea = Rectangle()
            .offset(x: 483, y: 310)
            .size(width: 281, height: 201)
        
        Button {
            print("Observed Bedroom Windows.")
        } label: {
            Image("Observable Bedroom Windows")
        }
        .contentShape(tappableArea)
    }
}

struct LivingRoomWindow_ObservableButton: View {
    var body: some View {
        let tappableArea = Rectangle()
            .offset(x: 636, y: 538)
            .size(width: 120, height: 165)

        Button {
            print("Living Room Window tapped!")
        } label: {
            Image("Observable Living Room Window")
        }
        .contentShape(tappableArea)
    }
}

struct IvyVines_ObservableButton: View {
    var body: some View {
        let tappableArea  = IvyVinesShape()
            .offset(x: 170, y: 215)
            .scale(2)
        
        Button {
            print("Ivy Vines tapped!")
        } label: {
            Image("Observable Ivy Vines")
        }
        .contentShape(tappableArea)
        
    }
}

struct Hedges_ObservableButton: View {
    var body: some View {
        let tappableArea = Rectangle()
            .offset(x: 405, y: 660)
            .size(width: 515, height: 90)
        
        Button {
            print("Hedges tapped!")
        } label: {
            Image("Observable Hedges")
        }
        .contentShape(tappableArea)
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
