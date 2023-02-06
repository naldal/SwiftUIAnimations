//
//  MovingObjects.swift
//  SwiftUIAnimations
//
//  Created by 송하민 on 2023/02/05.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import SwiftUI

struct DragObject: View {
  
  @State private var offset: CGSize = .zero
  
  var body: some View {
    Square(
      color: .blue,
      width: 120,
      height: 120,
      cornerRadius: 8
    )
    .offset(offset)
    .gesture(
      DragGesture()
        .onChanged({ self.offset = $0.translation })
        .onEnded({ _ in
          withAnimation {
            self.offset = .zero
          }
        })
    )
  }
}
