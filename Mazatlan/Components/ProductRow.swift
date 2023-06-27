//
//  ProductRow.swift
//  Mazatlan
//
//  Created by Angel Lopez on 6/7/23.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    @State var pressed = false
    var body: some View {
        HStack{
            Rectangle()
                .foregroundColor(Color.blue)
                .frame(width: 50, height: 50)
                .cornerRadius(15)
                .shadow(radius: 8)
                .padding(.horizontal)
            
            
            VStack(alignment: .leading){
                Text(product.name)
                    .bold()
                    .font(.title3)
                // .foregroundColor(Color.blue)
                
                Text("$\(product.price, specifier: "%.2f")")
                    .bold()
                    .font(.subheadline)
                
                
            }
            
            Spacer()
            
            
            
            
            Image(systemName: "plus.app")
                .foregroundColor(Color.blue)
                .bold()
                .font(.title2)
                .frame(width: 30)
                .padding(.horizontal)
                .onTapGesture {
                    cartManager.addToCart(product: product)
                }
            
        }.shadow(radius: 12)
        
            .onTapGesture{
                pressed.toggle()
                
            }
        
            .sheet(isPresented: $pressed) {
                //                VStack{
                //                    HStack{
                //                        Text(product.name)
                //                            .bold()
                //                            .padding()
                //
                //                        Spacer()
                //
                //                        Text("$\(product.price, specifier: "%.2f")")
                //                            .bold()
                //                            .font(.subheadline)
                //                            .padding()
                //
                //                    }
                //
                //                    Text(product.description)
                //                        .font(.body)
                //                }
                
                CustomizeItem(product: product)
            }
        
        
        
        
    }
}

#Preview {
    ProductRow(product: productList[0])
        .environmentObject(CartManager())
}
