//
//  ItemModel.swift
//  Doughnuts
//
//  Created by Ginanjar Setia Budi on 25/03/23.
//

import Foundation
import SwiftUI

struct ProductModel: Identifiable {
    var id = UUID()
    var name: String
    var category: String
    var details: String
    var imageName: String
    var price: Int
    var priceColor: Color
    var backgroundPriceColor: Color
    var backgroundColor: Color
    var ingredients: [IngredientModel]?
}

struct IngredientModel: Identifiable {
    var id = UUID()
    var name: String
    var wight: Float
    var percentage: Float
    var backgroundColor: Color
}
