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
            VStack(alignment: .leading) {
                HeaderImage(imageName: data.imageName,
                            backgroundColor: data.backgroundColor)
                
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                        .padding(.bottom, 8)
                    
                    // Ingredients List
                    if data.ingredients != nil {
                        ScrollView(.horizontal){
                            HStack(spacing: 10){
                                ForEach(data.ingredients ?? []) { ingredient in
                                    IngredientsItem(data: ingredient)
                                }
                            }
                        }
                    } else {
                        HStack(alignment: .center) {
                            Text("Data Empty")
                                .font(.system(size: 14))
                                .padding()
                        }
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity,
                            minHeight: 0,
                            alignment: .center
                        )
                    }
                    
                    // Details
                    DetailSection(details: data.details)
                }
                .padding()
                
                Spacer()
                
                CartBottomSheet(leadingText: "$12.27",
                                secodaryText: "Delivery Not Included",
                                buttonTitle: "Add to Cart",
                                functionButton: {
                                    print("Add to Cart")
                                }
                )
                
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
            details: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five.",
            imageName: "doughnut4",
            price: 36,
            priceColor: Color(hex: "6ab5c5"),
            backgroundPriceColor: Color(hex: "fbe9db"),
            backgroundColor: Color(hex: "fdf5f0"),
            ingredients: [
                IngredientModel(name: "Sugar", wight: 8, percentage: 2.0, backgroundColor: Color(hex: "d4915f")),
                IngredientModel(name: "Sugar", wight: 5, percentage: 3.0, backgroundColor: Color(hex: "d4915f")),
                IngredientModel(name: "Sugar", wight: 3, percentage: 2.4, backgroundColor: Color(hex: "d4915f")),
                IngredientModel(name: "Sugar", wight: 2, percentage: 1.0, backgroundColor: Color(hex: "d4915f")),
                IngredientModel(name: "Sugar", wight: 1, percentage: 1.2, backgroundColor: Color(hex: "d4915f")),
                IngredientModel(name: "Sugar", wight: 1, percentage: 1.1, backgroundColor: Color(hex: "d4915f"))
            ]
        ))
    }
}
