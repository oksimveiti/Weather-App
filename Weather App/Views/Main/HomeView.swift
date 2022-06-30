//
//  HomeView.swift
//  Weather App
//
//  Created by Semih on 30.06.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            // MARK: Background Color
            Color.background
                .ignoresSafeArea()
            
            // MARK: Background Image
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
            // MARK: House Image
            Image("House")
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 257)
            
            VStack(spacing: -10){
                Text("Montreal")
                    .font(.largeTitle)
                
                VStack{
                    Text("19°")
                        .font(.system(size: 96, weight: .thin))
                        .foregroundColor(.primary)
                    +
                    Text("\n")
                    +
                    Text("Mostly Clear")
                        .font(.title3.weight(.semibold))
                        .foregroundColor(.secondary)
                    
                    Text("H:24°   L:18°")
                        .font(.title3.weight(.semibold))
                }
                
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
