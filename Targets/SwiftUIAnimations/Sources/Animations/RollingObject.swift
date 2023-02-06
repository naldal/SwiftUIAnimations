//
//  RollingObject.swift
//  SwiftUIAnimations
//
//  Created by 송하민 on 2023/02/06.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import SwiftUI

struct RollingObject: View {
  
  @State private var squarePosition: CGFloat = 0.0
  @State private var rollingAngle: Angle = Angle(radians: 0)
  
  var body: some View {
    VStack {
      HStack {
        Square(width: 120, height: 120)
          .offset(x: squarePosition, y: 0)
          .rotationEffect(rollingAngle)
        
      }
      Button {
        withAnimation(.linear(duration: 23.0)) {
          self.squarePosition += 100
          self.rollingAngle.radians += 300
        }
      } label: {
        Text("Rolling")
      }
    }
  }
  
  
  
}
