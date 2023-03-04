//
//  TextChanges.swift
//  SwiftUIAnimations
//
//  Created by 송하민 on 2023/03/04.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import SwiftUI

struct TextChanges: View {
  @State private var changeColor: Bool = false
  
  var body: some View {
    VStack(spacing: 100) {
      Text("Hello World!")
        .font(.title)
        .foregroundColor(changeColor ? .red : .blue)
      Button {
        changeColor.toggle()
      } label: {
        Text("Change Color")
          .font(.title3)
      }

    }
  }
}
