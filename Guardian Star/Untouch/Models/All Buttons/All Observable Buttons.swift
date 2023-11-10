//
//  All Locations.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 10/24/23.
//

import Foundation
import SwiftUI

struct ObservableButtons {
    
//MARK: BACKYARD
    static let observableBackyardButtons = [
        //Bedroom Windows
        ObservableObjectButton(
            tappableArea: .rectangle,
            padding: Padding(
                top: 2.55,
                leading: 2.14,
                bottom: 3.1,
                trailing: 4),
            imageName: "Observable Bedroom Windows",
            emoteName: "Happy Susie",
            message: "Daisy's bedroom is up there."
        ),
        //Living Room Window
        ObservableObjectButton(
            tappableArea:.rectangle,
            padding: Padding(
                top: 1.45,
                leading: 1.62,
                bottom: 12,
                trailing: 3.86),
            imageName: "Observable Living Room Window",
            emoteName: "Thoughtful Susie",
            message: "Someone forgot to close the window.\nDaisy's mama must not be home."
        ),
        //Ivy Vines
        ObservableObjectButton(
            tappableArea: .ivyVines,
            padding: Padding(
                top: 1.8,
                leading: 1.42,
                bottom: 16,
                trailing: 8.7),
            imageName: "Observable Ivy Vines",
            emoteName: "Happy Susie",
            message: "I wonder if I could climb that ivy up to Daisy's window.\nI'll have to start at the base, through the hedges."
        ),
        //Hedges
        ObservableObjectButton(
            tappableArea: .hedges,
            padding: Padding(
                top: 1.22,
                leading: 2.6,
                bottom: 100,
                trailing: 10.5),
            imageName: "Observable Hedges",
            emoteName: "Thoughtful Susie",
            message: "The hedges have been looking a little unkempt lately."
        )
    ]
    
//MARK: HEDGES
    static let observableHedgesButtons: [ObservableObjectButton] = [
        //Branch
        ObservableObjectButton(
            tappableArea: .branch,
            padding: Padding(
                top: 1.64,
                leading: 4.5,
                bottom: 40,
                trailing: 1.83),
            imageName: "Observable Branch",
            emoteName: "Thoughtful Susie",
            message: "A long, spindly branch.\nIt must have broken off one of the bushes."
        ),
        //Ivy Vines Base
        ObservableObjectButton(
            tappableArea: .ivyBase,
            padding: Padding(
                top: 300,
                leading: 2.6,
                bottom: 3,
                trailing: 300),
            imageName: "Observable Ivy Vines Base",
            emoteName: "Happy Susie",
            message: "This ivy leads up the side of the house.\nI could probably climb it from here!"
        )
    ]
}
