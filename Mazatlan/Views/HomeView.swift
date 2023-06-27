//
//  HomeView.swift
//  Mazatlan
//
//  Created by Angel Lopez on 6/7/23.
//

import SwiftUI

struct HomeView: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    @StateObject var cartManager = CartManager()
    @State private var itemSearch: String = ""
    let currentHour = Calendar.current.component(.hour, from: Date())
    @State private var tapped = false
    @State private var selected = true
    var body: some View {
        NavigationStack{
            VStack {
                VStack{
                    //Color here
                    ScrollViewReader{ proxy in
                        VStack {
                            HStack{
                                VStack(alignment: .leading, spacing: 6){
                                    
                                    
                                    Button {
                                        withAnimation {
                                            proxy.scrollTo("Top", anchor: .topLeading)
                                        }
                                        
                                    } label: {
                                        Text("El Mazatlan")
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                        
                                    }
                                    
                                    
                                    
                                }.frame(maxWidth: .infinity, alignment: .leading)
                                
                                NavigationLink {
                                    CartView()
                                        .environmentObject(cartManager)
                                } label: {
                                    CartButton(numberOfProducts: cartManager.products.count)
                                }
                                
                                //                                Button {
                                //                                    tapped.toggle()
                                //                                } label: {
                                //                                    Image(systemName: "magnifyingglass")
                                //                                        .font(.title3)
                                //                                        .fontWeight(.bold)
                                //
                                //
                                //                                }
                                
                                
                            }.padding(.horizontal)
                            
                            
                            ScrollView(.vertical, showsIndicators: true){
                                HStack{
                                    VStack(alignment: .leading, content:  {
                                        (
                                            Text("Where ")
                                            +
                                            Text("Amigos ")
                                                .foregroundColor(Color.blue)
                                            +
                                            Text("Meet To ")
                                            +
                                            Text("Eat")
                                                .foregroundColor(Color.blue)
                                            
                                            
                                            
                                        )
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .padding(.trailing, 130)
                                        
                                    })
                                    
                                    Spacer()
                                }
                                .padding(.horizontal)
                                
                                
                                
                                //                                if tapped{
                                //                                    HStack{
                                //                                        Image(systemName: "magnifyingglass")
                                //                                            .font(.title)
                                //                                            .foregroundColor(Color.black)
                                //                                            .bold()
                                //
                                //                                        TextField("Looking for the one?...We all are", text: $itemSearch)
                                //                                            .autocorrectionDisabled()
                                //                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                //
                                //
                                //                                    }.padding()
                                //                                        .background(Color.white)
                                //                                        .cornerRadius(25)
                                //                                        .shadow(radius: 30)
                                //                                        .padding()
                                //                                }
                                
                                
                                
                                
                                if itemSearch == ""{
                                    
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        HStack(spacing: 10) {
                                            Group{
                                                Button {
                                                    
                                                } label: {
                                                    Text("Appetizers")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                                
                                                Button {
                                                    withAnimation{
                                                        proxy.scrollTo("Al a Carte", anchor: .top)
                                                    }
                                                } label: {
                                                    Text("Al a Carte")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                                
                                                Button {
                                                    withAnimation{
                                                        proxy.scrollTo("Combos", anchor: .top)
                                                    }
                                                } label: {
                                                    Text("Combinations")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                                
                                                Button {
                                                    withAnimation{
                                                        proxy.scrollTo("Vegetarian", anchor: .top)
                                                    }
                                                } label: {
                                                    Text("Vegetarian")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                            }
                                            
                                            Group{
                                                Button {
                                                    withAnimation{
                                                        proxy.scrollTo("Specials", anchor: .top)
                                                    }
                                                } label: {
                                                    Text("Specialties")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                                
                                                Button {
                                                    withAnimation{
                                                        proxy.scrollTo("Sides", anchor: .top)
                                                    }
                                                } label: {
                                                    Text("Side Orders")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                                
                                                Button {
                                                    withAnimation{
                                                        proxy.scrollTo("Desserts", anchor: .top)
                                                    }
                                                } label: {
                                                    Text("Desserts")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                            }
                                            
                                            Group{
                                                Button {
                                                    withAnimation{
                                                        proxy.scrollTo("Burritos", anchor: .top)
                                                    }
                                                } label: {
                                                    Text("Burritos")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                                
                                                Button {
                                                    withAnimation{
                                                        proxy.scrollTo("Enchiladas", anchor: .top)
                                                    }
                                                } label: {
                                                    Text("Enchiladas")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                                
                                                Button {
                                                    withAnimation{
                                                        proxy.scrollTo("Quesadillas", anchor: .top)
                                                    }
                                                } label: {
                                                    Text("Quesadillas")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                            }
                                            
                                            Group{
                                                Button {
                                                    withAnimation{
                                                        proxy.scrollTo("Chicken", anchor: .top)
                                                    }
                                                } label: {
                                                    Text("Chicken")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                                
                                                Button {
                                                    withAnimation{
                                                        proxy.scrollTo("Seafood", anchor: .top)
                                                    }
                                                } label: {
                                                    Text("Seafood")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                                
                                                Button {
                                                    withAnimation{
                                                        proxy.scrollTo("Fajitas", anchor: .top)
                                                    }
                                                } label: {
                                                    Text("Fajitas")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                                
                                                Button {
                                                    withAnimation{
                                                        proxy.scrollTo("Kids", anchor: .top)
                                                    }
                                                } label: {
                                                    Text("Kids")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                                
                                                Button {
                                                    withAnimation{
                                                        proxy.scrollTo("Steak", anchor: .top)
                                                    }
                                                } label: {
                                                    Text("Steak")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                                
                                                Button {
                                                    withAnimation{
                                                        proxy.scrollTo("Nachos", anchor: .top)
                                                    }
                                                } label: {
                                                    Text("Nachos")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                                if currentHour >= 15 {
                                                    Button {
                                                        withAnimation{
                                                            proxy.scrollTo("Lunch", anchor: .top)
                                                        }
                                                    } label: {
                                                        Text("Lunch")
                                                            .fontWeight(.bold)
                                                            .frame(width: 130, height: 45)
                                                            .background(Color.blue)
                                                            .cornerRadius(8)
                                                            .foregroundColor(Color.white)
                                                    }
                                                }
                                                
                                                Button {
                                                    withAnimation{
                                                        proxy.scrollTo("Drinks", anchor: .top)
                                                    }
                                                } label: {
                                                    Text("Drinks")
                                                        .fontWeight(.bold)
                                                        .frame(width: 130, height: 45)
                                                        .background(Color.blue)
                                                        .cornerRadius(8)
                                                        .foregroundColor(Color.white)
                                                }
                                            }
                                            
                                        }
                                    }
                                    
                                    
                                    
                                    Group{
                                        //Apps
                                        HStack{
                                            
                                            Text("Appetizers:")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Top")
                                            
                                            
                                            
                                            Spacer()
                                        }
                                        
                                        ForEach(productList[0...9], id: \.id){ product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                            
                                        }
                                        
                                        
                                        //Al a carte
                                        HStack{
                                            
                                            Text("Al a Carte")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Al a Carte")
                                            
                                            Spacer()
                                            
                                            
                                        }
                                        ForEach(productList[10...31], id: \.id){ product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                            
                                        }
                                        
                                        //Combinations
                                        HStack{
                                            Text("Combinations:")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Combos")
                                            
                                            Spacer()
                                        }
                                        ForEach(productList[32...46], id: \.id){ product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                            
                                        }
                                    }
                                    Group{
                                        //Vegeterian Options
                                        HStack{
                                            Text("Vegeterian:")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Vegetarian")
                                            
                                            Spacer()
                                        }
                                        ForEach(productList[47...53], id: \.id){ product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                        }
                                        
                                        //Specialties
                                        HStack{
                                            Text("Specialties:")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Specials")
                                            
                                            Spacer()
                                        }
                                        ForEach(productList[54...70], id: \.id){ product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                            
                                        }
                                        
                                        //Side Orders
                                        HStack{
                                            Text("Side Orders:")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Sides")
                                            
                                            Spacer()
                                        }
                                        ForEach(productList[71...81], id: \.id){ product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                            
                                        }
                                        
                                        //Desserts
                                        HStack{
                                            Text("Desserts:")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Desserts")
                                            
                                            Spacer()
                                        }
                                        ForEach(productList[82...84], id: \.id){ product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                            
                                        }
                                    }
                                    
                                    Group{
                                        //Burritos
                                        HStack{
                                            Text("Burritos:")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Burritos")
                                            
                                            Spacer()
                                        }
                                        ForEach(productList[85...92], id: \.id){ product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                        }
                                        
                                        //Specials
                                        HStack{
                                            Text("Enchiladas:")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Enchiladas")
                                            
                                            Spacer()
                                        }
                                        ForEach(productList[93...97], id: \.id){ product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                        }
                                        
                                        //Quesadillas
                                        HStack{
                                            Text("Quesadillas:")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Quesadillas")
                                            
                                            Spacer()
                                        }
                                        ForEach(productList[98...101], id: \.id){ product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                            
                                        }
                                    }
                                    
                                    Group{
                                        //Chicken
                                        HStack{
                                            Text("Chicken:")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Chicken")
                                            
                                            Spacer()
                                        }
                                        ForEach(productList[102...117], id: \.id){ product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                        }
                                        
                                        //Seafood
                                        HStack{
                                            Text("Seafood:")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Seafood")
                                            
                                            Spacer()
                                        }
                                        ForEach(productList[118...127], id: \.id){ product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                        }
                                        
                                        
                                        
                                    }
                                    
                                    Group{
                                        
                                        //Fajitas
                                        HStack{
                                            Text("Fajitas:")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Fajitas")
                                            
                                            Spacer()
                                        }
                                        ForEach(productList[139...149], id: \.id){ product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                        }
                                        
                                        //Kids
                                        HStack{
                                            Text("Kids:")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Kids")
                                            
                                            Spacer()
                                        }
                                        ForEach(productList[128...138], id: \.id){ product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                        }
                                        
                                        //Steak
                                        HStack{
                                            Text("Steak:")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Steak")
                                            
                                            Spacer()
                                        }
                                        ForEach(productList[150...156], id: \.id){ product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                        }
                                        
                                        //Nachos
                                        HStack{
                                            Text("Nachos:")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Nachos")
                                            
                                            Spacer()
                                        }
                                        ForEach(productList[157...162], id: \.id){ product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                        }
                                    }
                                    
                                    if currentHour >= 15{
                                        HStack{
                                            Text("Lunch:")
                                                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                                .bold()
                                                .font(.title2)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.blue)
                                                .id("Lunch")
                                            
                                            Spacer()
                                        }
                                        ForEach(productList[163...182], id: \.id){product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                        }
                                    }
                                    
                                    HStack{
                                        Text("Drinks:")
                                            .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 20))
                                            .bold()
                                            .font(.title2)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color.blue)
                                            .id("Drinks")
                                        
                                        Spacer()
                                    }
                                    ForEach(productList[183...191], id: \.id){product in
                                        Divider()
                                        ProductRow(product: product)
                                            .environmentObject(cartManager)
                                    }
                                    
                                    
                                }else{
                                    HStack{
                                        Text("Looking...")
                                            .bold()
                                        Spacer()
                                    }
                                    withAnimation(.spring()){
                                        
                                        ForEach(productList.filter { $0.name.contains(itemSearch) }, id: \.id) { product in
                                            Divider()
                                            ProductRow(product: product)
                                                .environmentObject(cartManager)
                                        }
                                    }
                                    
                                    
                                }
                                
                                
                            }
                            
                            
                            
                            
                            
                            
                            
                            
                        }
                        
                        
                        
                        
                        
                    }
                }
                
                
            }
        }
    }
}


#Preview {
    HomeView()
}
