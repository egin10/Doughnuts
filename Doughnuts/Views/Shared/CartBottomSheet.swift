//
//  CartBottomSheet.swift
//  Doughnuts
//
//  Created by Ginanjar Setia Budi on 27/03/23.
//

import Foundation
import SwiftUI

struct CartBottomSheet: View {
    var leadingText, secodaryText, buttonTitle: String
    var functionButton: () -> Void
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(leadingText)
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                Text(secodaryText)
                    .font(.system(size: 12, weight: .light, design: .rounded))
            }
            .padding()
            Spacer()
            
            Button {
                functionButton()
            } label: {
                Text(buttonTitle)
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
            }
            .padding()
        }
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(.gray, lineWidth: 1))
        .padding()
    }
}
