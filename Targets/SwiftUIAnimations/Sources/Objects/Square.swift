//
//  Square.swift
//  SwiftUIAnimations
//
//  Created by 송하민 on 2023/02/05.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import SwiftUI

struct Square: View {
  
  @State var width: CGFloat
  @State var height: CGFloat
  @State var cornerRadius: CGFloat
  @State var color: Color
  
  init(
    color: Color = .red,
    width: CGFloat,
    height: CGFloat,
    cornerRadius: CGFloat = 0.0
  ) {
    self.color = color
    self.width = width
    self.height = height
    self.cornerRadius = cornerRadius
  }
  
  var body: some View {
    Rectangle()
      .fill(self.color)
      .frame(width: self.width, height: self.height)
      .cornerRadius(self.cornerRadius)
  }
}
