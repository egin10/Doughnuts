//
//  TabMenus.swift
//  Doughnuts
//
//  Created by Ginanjar Setia Budi on 25/03/23.
//

import Foundation

struct TabModel: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
}

var tabMenus: [TabModel] = [
    TabModel(name: "doughnuts", imageName: "doughnutTab"),
    TabModel(name: "hamburgers", imageName: "hamburgerTab"),
    TabModel(name: "cookiess", imageName: "cookiesTab"),
    TabModel(name: "pancakes", imageName: "pancakesTab"),
    TabModel(name: "pizzas", imageName: "pizzaTab"),
]
