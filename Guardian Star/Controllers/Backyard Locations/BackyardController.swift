//
//  Backyard Objects.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/23/23.
//

import Foundation

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
