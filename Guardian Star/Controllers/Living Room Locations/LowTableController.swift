//
//  LowTableController.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/27/23.
//

import Foundation

struct LowTableController {
    var observableObjects: [ObjectType: Object] = [
        .twine: Object(
            imageName: "Twine",
            imageGlowName: "ObsGlo - Twine",
            message: "Twine... that could come in handy."
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .twine: Object(
            imageName: "Twine",
            imageGlowName: "IntGlo - Twine"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .back: Object(imageName: "Arrow - Back")
    ]
}
