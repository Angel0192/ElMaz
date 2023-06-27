//
//  CartView.swift
//  Mazatlan
//
//  Created by Angel Lopez on 6/7/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    @State var Tip = ""
    @State var pressed = false
    @State var toggle = false
    @State var Total = 0.00
    
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .center){
                ScrollView(.vertical, showsIndicators: false){
                    
                    if(cartManager.products.count > 0){
                        
                        //                        ForEach(cartManager.products, id: \.id){
                        //                            product in
                        //                            CartProductRow(product: product)
                        //                                .environmentObject(cartManager)
                        //
                        //                            Divider()
                        //                        }
                        
                        ForEach(cartManager.products, id: \.id) { product in
                            CartProductRow(product: product)
                                .environmentObject(cartManager)
                            
                            Divider()
                            
                        }
                        
                        Spacer()
                        
                        VStack{
                            
                            Spacer()
                            
                            
                            HStack{
                                Text("Total: ")
                                Spacer()
                                Text("$\(cartManager.total, specifier: "%.2f")")
                            }.padding(.horizontal)
                            
                            Divider()
                            
                            HStack{
                                Text("Tax: ")
                                Spacer()
                                Text("$\(cartManager.tax, specifier: "%.2f")")
                            }.padding(.horizontal)
                            
                            
                            
                            
                        }
                    }else{
                        Spacer(minLength: 340)
                        Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                            .font(.largeTitle)
                        
                        Text("Your bag is empty!")
                            .font(.title)
                            .bold()
                        
                        Text("Add things to your order to continue.")
                            .font(.title2)
                        
                        
                        
                        
                    }//Else
                    
                    
                }
                
            }
            
            
            
        }
        
        
        
        
    }
    
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
