//
//  CustomizeItem.swift
//  Mazatlan
//
//  Created by Angel Lopez on 6/7/23.
//

import SwiftUI

struct CustomizeItem: View {
    
    @EnvironmentObject var cartMangager: CartManager
    var product: Product
    @Environment(\.dismiss) var dismiss
    @State var None1: Bool = false
    @State var Regular1: Bool = true
    @State var Extra1: Bool = false
    
    @State var None2: Bool = false
    @State var Regular2: Bool = true
    @State var Extra2: Bool = false
    
    @State var None3: Bool = false
    @State var Regular3: Bool = true
    @State var Extra3: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                Rectangle()
                     .frame(width: 350, height: 250)
                     .foregroundStyle(Color.blue)
                     .cornerRadius(8)
                     .padding(.all)
                     
                HStack{
                   
                    Text(product.name)
                        .font(.title)
                            .bold()
                            
                        
                    Spacer()
                    
                    Text("$\(product.price, specifier: "%.2f")")
                        .font(.title3)
                            .bold()
                            
                    
              
                    
                  
                        
                    
                }.padding(.all)
                
                Text(product.description)
                    .font(.body)
                    .padding()
                
                Spacer()
               
            }
            
            
            
        }
    }
    
}

#Preview {
    CustomizeItem(product: productList[2])
        .environmentObject(CartManager())
}
