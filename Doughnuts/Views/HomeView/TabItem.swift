//
//  TabItem.swift
//  Doughnuts
//
//  Created by Ginanjar Setia Budi on 25/03/23.
//

import Foundation
import SwiftUI

struct TabItem: View {
    var data: TabModel
    @Binding var tabSelected: String
    
    var body: some View {
        VStack {
            Image(data.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(.black, lineWidth: 1))
            Text(data.name)
                .font(.system(size: 10, weight: .semibold, design: .rounded))
        }
        .onTapGesture {
            tabSelected = data.name
        }
    }
}

struct TempView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
