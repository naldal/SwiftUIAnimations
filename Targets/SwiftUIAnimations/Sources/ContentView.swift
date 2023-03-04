//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by 송하민 on 2023/02/05.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Section() {
      NavigationView {
        List {
          NavigationLink(destination: DragObject()) {
            Text("Drag Object")
          }
          NavigationLink(destination: RollingObject()) {
            Text("Rolling Object")
          }
          NavigationLink(destination: SaredSquare()) {
            Text("Scared Square")
          }
          NavigationLink(destination: TextChanges()) {
            Text("Text Changes")
          }
          NavigationLink(destination: ColorChanger()) {
            Text("Color Changer")
          }
        }
        .navigationTitle("SwiftUI Animations")
        
        }
      }
  }
}
