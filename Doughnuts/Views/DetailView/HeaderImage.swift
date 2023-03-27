//
//  HeaderImage.swift
//  Doughnuts
//
//  Created by Ginanjar Setia Budi on 27/03/23.
//

import Foundation
import SwiftUI

struct HeaderImage: View {
    var imageName: String
    var backgroundColor: Color
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .padding()
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            alignment: .center
        )
        .background(backgroundColor)
    }
}
