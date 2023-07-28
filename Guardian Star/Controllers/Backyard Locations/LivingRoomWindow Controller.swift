//
//  Living Room Window Controller.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/27/23.
//

import Foundation

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
