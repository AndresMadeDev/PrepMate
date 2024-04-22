//
//  CustomColorPickerView.swift
//  PrepMate
//
//  Created by Andres Made on 4/21/24.
//

import SwiftUI

struct CustomColorPickerView: View {
    @Binding var selectedColor: Color
    private let colors: [Color] = [
        .red, .yellow, .blue, .green, .purple, .pink, .cyan, .indigo, .teal, .orange, .brown, .mint
    ]
    private let columns = [
           GridItem(.adaptive(minimum: 50))
       ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, content: {
                ForEach(colors, id: \.self) { color in
                    ZStack {
                        Circle()
                            .foregroundStyle(color)
                            .frame(width: 50, height: 50)
                        
                        if color == selectedColor {
                            Image(systemName: "checkmark")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                        }
                    }
                    .animation(.linear(duration: 1), value: selectedColor)
                    .onTapGesture {
                        selectedColor = color
                    }
                }
            })
        }
        
    }
}

#Preview {
    CustomColorPickerView(selectedColor: .constant(.blue))
}
