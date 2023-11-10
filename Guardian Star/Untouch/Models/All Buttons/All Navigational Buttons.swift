//
//  All Navigational Buttons.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 11/7/23.
//

import Foundation
import SwiftUI

struct NavigationalButtons {
    
//MARK: BACKYARD
    static let navigationalBackyardButtons = [
        //Hedges
        NavigationalObjectButton(
            padding: Padding(
                top: 1.16,
                leading: 2.6,
                bottom: 300,
                trailing: 10.5),
            imageName: "Forward Arrow",
            destination: .hedges
        )
    ]
    
//MARK: HEDGES
    static let navigationalHedgesButtons = [
    //Back
        NavigationalObjectButton(
            padding: Padding(
                top: 1.3,
                leading: 1.55,
                bottom: 20,
                trailing: 4),
            imageName: "Backward Arrow",
            destination: .backyard
        ),
    //Living Room Window
        NavigationalObjectButton(
            padding: Padding(
                top: 20,
                leading: 1.55,
                bottom: 1.3,
                trailing: 4),
            imageName: "Up Arrow",
            destination: .hedges
        )
    ]
}
