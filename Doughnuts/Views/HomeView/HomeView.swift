//
//  HomeView.swift
//  Doughnuts
//
//  Created by Ginanjar Setia Budi on 25/03/23.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @State var tabSelected = "doughnuts"
    
    var body: some View {
        NavigationStack {
            // App Bar
            AppBarView()
            
            // Header Text
            HStack() {
                Text("I want to")
                    .font(.system(size: 25, weight: .semibold, design: .rounded))
                Text("Eat")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .underline()
                Spacer()
            }.padding(.horizontal)
            
            // Tab Menus
            HStack(spacing: 25) {
                ForEach(tabMenus.indices, id: \.self) { index in
                    TabItem(data: tabMenus[index], tabSelected: $tabSelected)
                }
            }.padding(.vertical)
            
            // Items
            ListItemsView(tabSelected: $tabSelected)
            
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct AppBarView: View {
    var body: some View {
        VStack {
            HStack {
                Image("menuIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                Spacer()
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
            }.padding()
        }
    }
}
