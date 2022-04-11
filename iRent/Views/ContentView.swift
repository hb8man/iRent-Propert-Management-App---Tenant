//
//  ContentView.swift
//  iRent
//
//  Created by William Bateman on 4/3/22.
//

import SwiftUI
import Firebase

struct ContentView: View {
    var body: some View {
                
        NavigationView {
            ZStack {
                LinearGradient(colors: [.gray,.blue], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack {
                    Text("iRent")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                    
                    Spacer()
                    
                    VStack(spacing: 25) {
                        Text("Welcome")
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .foregroundColor(.secondary)
                        
                        NavigationLink("Login", destination: TenantLoginView())
                            .frame(width: 200, height: 55, alignment: .center)
                            .background(.mint)
                            .foregroundColor(.primary)
                            .cornerRadius(12)
                            .shadow(radius: 3)
                        
                        NavigationLink("Register", destination: RegisterView())
                            .frame(width: 200, height: 55, alignment: .center)
                            .background(.thinMaterial)
                            .foregroundColor(.primary)
                            .cornerRadius(12)
                            .shadow(radius: 3)
                            .padding(.bottom, 8)
        

                        
                    }
                    .frame(width: 275, height: 280, alignment: .center)
                    .background(.ultraThinMaterial)
                    .cornerRadius(12)
                    
                    Spacer()
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
