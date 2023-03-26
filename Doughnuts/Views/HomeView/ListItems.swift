//
//  ListItem.swift
//  Doughnuts
//
//  Created by Ginanjar Setia Budi on 26/03/23.
//

import Foundation
import SwiftUI

struct ListItemsView : View {
    @Binding var tabSelected: String
    
    let colums = [GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: colums, spacing: 10) {
                ForEach(products[tabSelected] ?? []) { data in
                    CardItem(backgroundPriceColor: data.backgroundPriceColor,
                             backgroundColor: data.backgroundColor,
                             priceColor: data.priceColor,
                             price: data.price,
                             imageName: data.imageName,
                             name: data.name,
                             category: data.category
                    )
                }
            }
        }.padding(.horizontal)
    }
}
