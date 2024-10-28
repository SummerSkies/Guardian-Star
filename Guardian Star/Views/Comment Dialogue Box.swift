//
//  Dialogue Box.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/18/23.
//

import SwiftUI

struct CommentDialogueBoxView: View {
    @EnvironmentObject private var rootController: RootController
    
    @State private var animationOpacity = 0.0
    let animationDuration = 0.3
    
    func dismiss() {
        Task {
            await animate(duration: animationDuration) {
                animationOpacity = 0.0
            }
            rootController.showComment = false
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            let areaWidth = geometry.size.width
            
            Rectangle()
                .frame(width: areaWidth, height: 160, alignment: .top)
                .foregroundColor(.clear)
            /*
            //Smaller
                .overlay {
                    DialogueBox(message: rootController.currentMessage)
                        .offset(x: 35, y: 0)
                        .opacity(animationOpacity)
                        .animation(.easeIn(duration: animationDuration), value: animationOpacity
                        )
                    ProfilePicture(emote: rootController.currentEmoteName)
                        .offset(x: -143, y: 35)
                        .opacity(animationOpacity)
                        .animation(.easeIn(duration: animationDuration), value: animationOpacity
                        )
                }
             */
            ///*
            //Larger
                .overlay {
                    DialogueBox(message: rootController.currentMessage)
                        .offset(x: 35, y: 10)
                        .opacity(animationOpacity)
                        .animation(.easeIn(duration: animationDuration), value: animationOpacity
                        )
                    ProfilePicture(emote: rootController.currentEmoteName)
                        .offset(x: -145, y: 50)
                        .opacity(animationOpacity)
                        .animation(.easeIn(duration: animationDuration), value: animationOpacity
                        )
                }
             //*/
                .onAppear {
                    animationOpacity = 1.0
                }
                .gesture(
                    TapGesture()
                        .onEnded {
                            dismiss()
                        }
                )
        }
    }
}

extension View {
    func animate(duration: CGFloat, _ execute: @escaping () -> Void) async {
        await withCheckedContinuation { continuation in
            withAnimation(.linear(duration: duration)) {
                execute()
            }

            DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                continuation.resume()
            }
        }
    }
}

struct CommentDialogueBoxView_Previews: PreviewProvider {
    static var previews: some View {
        CommentDialogueBoxView()
            .environmentObject(RootController())
    }
}
