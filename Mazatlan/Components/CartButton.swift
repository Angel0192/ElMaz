//
//  CartButton.swift
//  Mazatlan
//
//  Created by Angel Lopez on 6/7/23.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "bag")
                .padding(.top, 5)
                
                .font(.title)
                .bold()
            
            if numberOfProducts > 0 {
                Image(systemName: "bag.fill")
                    .padding(.top, 5)
                    .foregroundColor(Color.blue)
                    .font(.title)
                    .bold()
                    .overlay {
                        Text("\(numberOfProducts)")
                            .font(.caption2).bold()
                            .foregroundColor(.white)
                            .frame(width: 15, height: 15)
                            .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                            .cornerRadius(50)
                            .offset(x: 10, y: -4)
                    }
            }
        }
    }
}

#Preview {
    CartButton(numberOfProducts: 0)
}
