//
//  BedroomWindowController.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/27/23.
//

import Foundation

struct BedroomWindowController {
    var observableObjects: [ObjectType: Object] = [
        .bedroomWindowFrame: Object(
            imageName: "Bedroom Window Frame",
            imageGlowName: "ObsGlo - Bedroom Window Frame",
            message: "This is Daisy's window.\nI can see my shelf from here!"
        ),
        .ivyVinesTips: Object(
            imageName: "Ivy Vines - Tips",
            imageGlowName: "ObsGlo - Ivy Vines Tips",
            message: "I can't go further up, but I could climb back down."
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .back: Object(imageName: "Arrow - Down")
    ]
}
