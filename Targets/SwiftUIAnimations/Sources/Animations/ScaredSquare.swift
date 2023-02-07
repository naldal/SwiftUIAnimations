//
//  ScaredSquare.swift
//  SwiftUIAnimations
//
//  Created by 송하민 on 2023/02/07.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import SwiftUI

struct SaredSquare: View {
  
  @State private var rollingAngle: Angle = Angle(radians: 0)
  @State private var isHolding: Bool = false
  
  var body: some View {
    
    Square(width: 100, height: 100)
      .rotationEffect(self.rollingAngle)
      .gesture(
        LongPressGesture(minimumDuration: 1)
          .onChanged({ _ in
            self.isHolding = true
            while isHolding {
              self.rollingAngle = Angle(radians: Double(Int.random(in: -10..<10)))
              print(isHolding)
            }
          })
          .onEnded({ _ in
            self.isHolding = false
          })
      )
  }
  
}
