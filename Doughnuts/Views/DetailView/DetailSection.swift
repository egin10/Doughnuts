//
//  DetailSection.swift
//  Doughnuts
//
//  Created by Ginanjar Setia Budi on 27/03/23.
//

import Foundation
import SwiftUI

struct DetailSection: View {
    var details: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Details")
                .font(.system(size: 18, weight: .semibold, design: .rounded))
                .padding(.bottom, 8)
            Text(details)
                .font(.system(size: 14, weight: .light, design: .rounded))
        }
        .padding(.top, 8)
    }
}
