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
        }
        .navigationTitle("SwiftUI Animations")
        
        }
      }
  }
}
