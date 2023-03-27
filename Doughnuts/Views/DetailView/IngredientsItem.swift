//
//  IngredientsList.swift
//  Doughnuts
//
//  Created by Ginanjar Setia Budi on 27/03/23.
//

import Foundation
import SwiftUI

struct IngredientsItem: View {
    var data: IngredientModel
    
    var body: some View {
        VStack {
            Text(data.name)
                .font(.system(size: 12, weight: .bold, design: .rounded))
                .padding(.top, 8)
                .padding(.bottom, 1)
            
            Text("\(data.wight.description) Gram")
                .font(.system(size: 10, weight: .light, design: .rounded))
            
            Text("\(data.percentage.description)%")
                .frame(width: 50, height: 50)
                .background(data.backgroundColor)
                .cornerRadius(50)
                .padding(.horizontal, 6)
                .padding(.bottom, 8)
        }
        .overlay(
            Capsule(style: .continuous)
                .stroke(Color.gray, style: StrokeStyle(lineWidth: 1))
        )
    }
}
