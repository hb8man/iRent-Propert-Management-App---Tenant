//
//  TenantLoginView.swift
//  iRent
//
//  Created by William Bateman on 4/3/22.
//

import SwiftUI
import Firebase

struct TenantLoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    func submitButtonPressed() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if result != nil, error == nil {
                print("Signed in successfully, user: \(result?.user.uid ?? "")")
                
                
            } else {
                print("\(error.debugDescription)")
            }
        }
    }
    
    func forgotPasswordPressed() {
        
    }
    
    func loginButtonPressed() {
        
    }
    
    var body: some View {
        
        NavigationView {
            ZStack {
                LinearGradient(colors: [.gray,.blue], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                                
                VStack {
                    VStack(spacing: 25) {
                        TextField("Email", text: $email)
                            .frame(width: 330, height: 50, alignment: .center)
                            .background(.thinMaterial)
                            .cornerRadius(12)
                            .multilineTextAlignment(.center)
                            .shadow(radius: 4)
                            .padding(.top, 15)
                        
                        TextField("Password", text: $password)
                            .frame(width: 330, height: 50, alignment: .center)
                            .background(.thinMaterial)
                            .cornerRadius(12)
                            .multilineTextAlignment(.center)
                            .shadow(radius: 4)
                        
                        HStack {
                            Button("Forgot Password") {
                                forgotPasswordPressed()
                            }
                        }
                        
                        NavigationLink(destination: TenantHub(), label: {
                            Text("Submit")
                        })
                            .frame(width: 250, height: 50, alignment: .center)
                            .foregroundColor(.primary)
                            .background(.mint)
                            .cornerRadius(12)
                            .shadow(radius: 4)
                            .padding(.vertical, 15)

                    }
                }
                .frame(width: 375, height: 350, alignment: .center)
                .background(.ultraThinMaterial)
                .cornerRadius(12)
            }
        }
        .navigationTitle("Tenant Login")
    }
}

struct TenantLoginView_Previews: PreviewProvider {
    static var previews: some View {
        TenantLoginView()
    }
}
