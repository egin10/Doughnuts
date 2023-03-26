//
//  CardItem.swift
//  Doughnuts
//
//  Created by Ginanjar Setia Budi on 25/03/23.
//

import Foundation
import SwiftUI

struct CardItem: View {
    var backgroundPriceColor, backgroundColor, priceColor: Color
    var price: Int
    var imageName, name, category: String
    
    var body: some View {
        ZStack {
            VStack {
                HeaderSection(price: price, priceColor: priceColor, backgroundPriceColor: backgroundPriceColor)
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 60)
                
                Text(name)
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                Text(category)
                    .font(.system(size: 10, weight: .regular, design: .rounded))
                    .foregroundColor(.gray)
                
                Spacer()
                
                BottomSection()
                
            }
        }
        .frame(width: 170, height: 210)
        .background(backgroundColor)
        .cornerRadius(30)
    }
}

struct HeaderSection: View {
    var price: Int
    var priceColor, backgroundPriceColor: Color
    
    var body: some View {
        HStack {
            Spacer()
            Text("$\(price)")
                .frame(width: 45)
                .font(.system(size: 14, weight: .semibold, design: .rounded))
                .foregroundColor(priceColor)
                .padding(10)
                .background(
                    RoundedCorners(color: backgroundPriceColor, tl: 0, tr:30, bl: 30, br: 0)
                )
        }
    }
}

struct BottomSection: View {
    var body: some View {
        HStack {
            Button {
                print("Favorite")
            } label: {
                Image(systemName: "heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
            }
            Spacer()
            Button{
                print("Add")
            }label: {
                Text("Add")
                    .font(.system(size: 12, weight: .semibold, design: .rounded))
                    .foregroundColor(.black)
            }
        }.padding()
    }
}
