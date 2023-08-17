//
//  BelowPoolTableController.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/27/23.
//

import SwiftUI

struct PoolTableController {
    var observableObjects: [ObjectType: Object] = [
        .poolCue: Object(
            imageName: "Pool Cue - Below",
            imageGlowName: "ObsGlo - Pool Cue Below",
            message: "A cue stick, for playing pool."
        ),
        .poolCueMoved: Object(
            imageName: "Pool Cue - Below Moved",
            imageGlowName: "ObsGlo - Pool Cue Below Moved",
            message: "The cue has been knocked out of my reach."
        ),
        .poolBall: Object(
            imageName: "Pool Ball - Below On Table",
            imageGlowName: "ObsGlo - Pool Ball Below On Table",
            message: "That pool ball is barely balancing on the edge of the table."
        ),
        .poolBallMoved: Object(
            imageName: "Pool Ball - Below Moved",
            imageGlowName: "ObsGlo - Pool Ball Below Moved",
            message: "When I hit the cue, it knocked the ball off the table!"
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .poolCue: Object(
            imageName: "Pool Cue - Below",
            imageGlowName: "IntGlo - Pool Cue Below"
        ),
        .poolBall: Object(
            imageName: "Pool Ball - Below On Table",
            imageGlowName: "IntGlo - Pool Ball Below On Table"
        ),
        .poolBallMoved: Object(
            imageName: "Pool Ball - Below Moved",
            imageGlowName: "IntGlo - Pool Ball Below Moved"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .back: Object(imageName: "Arrow - Back")
    ]
}

//MARK: UI Models - Observable
struct PoolCue_ObservableButton: View {
    var body: some View {
        Button("Pool Cue") {
            print("Pool Cue tapped!")
        }
        .frame(width: 350, height: 170)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: -300, y: -200)
    }
}

struct PoolCueMoved_ObservableButton: View {
    var body: some View {
        Button("Pool Cue Moved") {
            print("Pool Cue Moved tapped!")
        }
        .frame(width: 500, height: 50)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: -200, y: -150)
    }
}

struct PoolBall_ObservableButton: View {
    var body: some View {
        Button("Pool Ball") {
            print("Pool Ball tapped!")
        }
        .frame(width: 100, height: 100)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 0, y: -175)
    }
}

struct PoolBallMoved_ObservableButton: View {
    var body: some View {
        Button("Pool Ball Moved") {
            print("Pool Ball Moved tapped!")
        }
        .frame(width: 150, height: 150)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 0, y: 250)
    }
}

//MARK: UI Models - Interactable
//poolCue poolcuemoved poolBall poolBallmoved
struct PoolCue_InteractableButton: View {
    var body: some View {
        Button("Pool Cue") {
            print("Pool Cue tapped!")
        }
        .frame(width: 350, height: 170)
        .background(Color.indigo.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: -300, y: -200)
    }
}

struct PoolBall_InteractableButton: View {
    var body: some View {
        Button("Pool Ball") {
            print("Pool Ball tapped!")
        }
        .frame(width: 100, height: 100)
        .background(Color.indigo.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 0, y: -175)
    }
}

struct PoolBallMoved_InteractableButton: View {
    var body: some View {
        Button("Pool Ball Moved") {
            print("Pool Ball Moved tapped!")
        }
        .frame(width: 150, height: 150)
        .background(Color.indigo.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 0, y: 250)
    }
}
