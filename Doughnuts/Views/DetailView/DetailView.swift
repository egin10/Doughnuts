//
//  DetailView.swift
//  Doughnuts
//
//  Created by Ginanjar Setia Budi on 27/03/23.
//

import SwiftUI

struct DetailView: View {
    var data: ProductModel
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Text("Detail : \(data.name)")
                Spacer()
            }
        }
        .navigationTitle(data.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: ProductModel(
            name: "Nut Caramel",
            category: "Dunkin's",
            details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            imageName: "doughnut4",
            price: 36,
            priceColor: Color(hex: "6ab5c5"),
            backgroundPriceColor: Color(hex: "ddf5fd"),
            backgroundColor: Color(hex: "f3fbff"),
            ingredients: []
        ))
    }
}
