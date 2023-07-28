//
//  LandingController.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import Foundation

struct LandingController {
    var observableObjects: [ObjectType: Object] = [
        .triangleBlock: Object(
            imageName: "Triangle Block",
            imageGlowName: "ObsGlo - Triangle Block",
            message: "These blocks haven't been used for years now."
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .triangleBlock: Object(
            imageName: "Triangle Block",
            imageGlowName: "IntGlo - Triangle Block"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .toUpstairs: Object(imageName: "Arrow - Left"),
        .back: Object(imageName: "Arrow - Left")
    ]
}
