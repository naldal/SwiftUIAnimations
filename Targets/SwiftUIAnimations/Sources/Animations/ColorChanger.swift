//
//  ObjectColorChange.swift
//  SwiftUIAnimations
//
//  Created by 송하민 on 2023/03/04.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import SwiftUI

struct ColorChanger: View {
  
  @State private var changer: Bool = true
  
  var body: some View {
    VStack(spacing: 100) {
      Text("Hello World")
        .font(.title)
        .foregroundColor(self.changer ? .purple : .brown)
        .fontWeight(.bold)
      Rectangle()
        .frame(width: 200, height: 100)
        .foregroundColor(self.changer ? .green : .orange)
      Button {
        self.changer.toggle()
      } label: {
        Text("Change Color")
          .font(.title2)
      }

    }
    
  }
}
