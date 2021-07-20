//
//  ContentView.swift
//  treeAnimation
//
//  Created by rutik maraskolhe on 20/07/21.
//

import SwiftUI

struct ContentView: View {
    @State private var swinging = false
    @State private var swingLeftLeg = false
    @State private var swingLeftRightLeg = false
    @State private var windBlowsFlowerLeftLeft = false
    @State private var windBlowsFlowerLeftRight = false
    @State private var windBlowsFlowerMiddleLeft = false
    @State private var windBlowsFlowerMiddleRight = false
    @State private var windBlowsFlowerRightLeft = false
    @State private var windBlowsFlowerRightRight = false
    
    var body: some View {
        ZStack {
            Text("Tree Swinging Animation")
                .offset(y: -350)
            Image("tree")
                .resizable()
                .scaledToFit()
            
            ZStack {
                Rectangle()
                    .frame(width: 414, height: 1)
                    .offset(y: 176)
                Rectangle()
                .frame(width: 25, height: 30)
                    .foregroundColor(Color(red: 0.249, green: 0.241, blue: 0.337))
                    .offset(x: 75, y: 16)
            }
            
            ZStack {
                Image("leg_left")
                    .resizable()
                    .rotationEffect(.degrees(swingLeftLeg ? 50 : -120), anchor: .top)
                    .scaleEffect(0.032)
                    .offset(x: 110, y: 130)
                    .animation(Animation.easeInOut(duration: 0.4).delay(1).repeatForever(autoreverses: true))
                    .onAppear() {
                        self.swingLeftLeg.toggle()
                }
                Image("leg_right")
                    .resizable()
                    .rotationEffect(.degrees(swingLeftRightLeg ? 25 : -50), anchor: .top)
                    .scaleEffect(0.05)
                    .offset(x: 118, y: 130)
                    .animation(Animation.easeInOut(duration: 0.3).delay(0.4).repeatForever(autoreverses: true))
                    .onAppear() {
                        self.swingLeftRightLeg.toggle()
                }

                Image("lady_on_swing")
                    .resizable()
                    .rotationEffect(.degrees(-10))
                    .scaleEffect(0.15)
                    .offset(x: 90, y: 65)

            }.rotationEffect(.degrees(swinging ? 15 : -1))
             .animation(Animation.easeOut(duration: 0.4).delay(0.4).repeatForever(autoreverses: true))
             .onAppear() {
                    self.swinging.toggle()
            }
            
            Image("flower_left_right")
                .scaleEffect(0.6)
                .rotationEffect(.degrees(windBlowsFlowerLeftRight ? -5 : 0), anchor: .bottom)
                .offset(x: -35, y: 158)
                .animation(Animation.easeIn(duration: 0.3).repeatForever(autoreverses: true))
                .onAppear() {
                    self.windBlowsFlowerLeftRight.toggle()
            }
            Image("flower_left_left")
                .scaleEffect(0.6)
                .rotationEffect(.degrees(windBlowsFlowerLeftLeft ? 5 : 0), anchor: .bottomTrailing)
                .offset(x: -40, y: 163)
                .animation(Animation.easeOut(duration: 0.25).repeatForever(autoreverses: true))
                .onAppear() {
                    self.windBlowsFlowerLeftLeft.toggle()
            }
            
            Image("flower_middle_right")
                .scaleEffect(0.6)
                .rotationEffect(.degrees(windBlowsFlowerMiddleRight ? 5 : 0), anchor: .bottom)
                .offset(x: 50, y: 160)
                .animation(Animation.easeIn(duration: 0.3).repeatForever(autoreverses: true))
                    .onAppear() {
                        self.windBlowsFlowerMiddleRight.toggle()
                }
            Image("flower_middle_left")
                .scaleEffect(0.6)
                .rotationEffect(.degrees(windBlowsFlowerMiddleRight ? -6 : 0), anchor: .bottom)
                .offset(x: 45, y: 157)
            .animation(Animation.easeInOut(duration: 0.25).repeatForever(autoreverses: true))
                .onAppear() {
                    self.windBlowsFlowerMiddleLeft.toggle()
            }
            
            Image("flower_right_right")
                .scaleEffect(0.6)
                .rotationEffect(.degrees(windBlowsFlowerMiddleRight ? -4 : 0), anchor: .bottom)
                .offset(x: 180, y: 160)
                .animation(Animation.easeInOut(duration: 0.3).repeatForever(autoreverses: true))
                .onAppear() {
                    self.windBlowsFlowerRightRight.toggle()
            }
            Image("flower_right_left")
                .scaleEffect(0.6)
                .rotationEffect(.degrees(windBlowsFlowerMiddleRight ? 6 : 0), anchor: .bottom)
                .offset(x: 170, y: 158)
            .animation(Animation.easeInOut(duration: 0.25).repeatForever(autoreverses: true))
                .onAppear() {
                    self.windBlowsFlowerRightLeft.toggle()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

