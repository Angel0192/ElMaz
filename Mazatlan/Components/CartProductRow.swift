//
//  CartProductRow.swift
//  Mazatlan
//
//  Created by Angel Lopez on 6/7/23.
//

import SwiftUI

struct CartProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    @State private var offset: CGSize = .zero
    @State private var isShowingDeleteButton = false
    @State private var isVisable = false
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 50, height: 50)
                .cornerRadius(15)
                .shadow(radius: 8)
                .padding(.horizontal)
                .foregroundColor(Color.blue)
            
            VStack(alignment: .leading) {
                Text(product.name)
                    .bold()
                    .font(.title3)
                //.foregroundColor(Color.blue)
                
                Text("$\(product.price, specifier: "%.2f")")
                    .bold()
                    .font(.subheadline)
            }
            
            Spacer()
            
            
                
                Text("Qty: \(product.quantity)")
                    .bold()
                    .font(.subheadline)
                    .padding()
                    .onTapGesture {
                        isVisable.toggle()
                    }
                
           
                if isVisable{
               
                    HStack{
                        if product.quantity >= 2{
                            Button {
                                cartManager.decreaseQuantity(for: product)
                            } label: {
                                Text("-")
                                    .font(.title)
                                    .foregroundStyle(Color.secondary)
                            }
                        }else{
                            Button {
                                cartManager.removeFromCart(product: product)
                            } label: {
                                Image(systemName: "trash")
                                    .foregroundStyle(Color.red)
                                    
                            }
                        }
                        
                        Button {
                            cartManager.increaseQuantity(for: product)
                        } label: {
                            Text("+")
                                .font(.title)
                                .foregroundStyle(Color.secondary)
                            
                        }.disabled(product.quantity >= 10)
                            
                    }.padding(.horizontal)
                    
                
            }
                
        }
            
        
    }
}

#Preview {
    CartProductRow(product: productList[0])
        .environmentObject(CartManager())
}
