//
//  SplashScreen.swift
//  Mazatlan
//
//  Created by Angel Lopez on 6/7/23.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if isActive == true{
            HomeView()
        }else{
            VStack{
                VStack{
                    Image("Maz")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .shadow(radius: 8)
                    
                }//VSTACK
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 0.5)){
                        size = 1.0
                        opacity = 1.0
                    }//WithAnimation
                }//OnAppear
            }//VSTACK
            .background(Color.white)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    withAnimation(.easeInOut(duration: 1.0)){
                        isActive = true
                    }
                }
            }
        }//ELSE
    }
}

#Preview {
    SplashScreen()
}
