//
//  Temp View.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/28/23.
//

import SwiftUI

struct Temp_View: View {
    var controlPoint = 0.0
    
    var body: some View {
        ZStack {
            Image("Observable Ivy Vines")
                .resizable()
                .scaledToFit()
                .background(Color.secondary)
            
            IvyVinesShape(controlPoint: controlPoint)
                .foregroundColor(Color.red.opacity(0.6))
                .offset(x:20, y:16)
        }
    }
}

struct Temp_View_Previews: PreviewProvider {
    static var previews: some View {
        Temp_View()
    }
}
