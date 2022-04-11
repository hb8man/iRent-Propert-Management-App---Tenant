//
//  RegisterView.swift
//  iRent
//
//  Created by William Bateman on 4/4/22.
//

import SwiftUI
import Firebase
import FirebaseAuth
import CoreMedia

struct RegisterView: View {
    

    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var isShowingAlert = false
    
    func submitButtonPressed() {
        if password == confirmPassword {
            Auth.auth().createUser(withEmail: email, password: password) { result, error in
                guard result != nil, error == nil else { return }
            }
        } else {
            isShowingAlert = true
        }
    }
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.gray,.blue], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 25) {
                TextField("Email", text: $email)
                    .frame(width: 330, height: 50, alignment: .center)
                    .background(.thinMaterial)
                    .cornerRadius(12)
                    .multilineTextAlignment(.center)
                    .shadow(radius: 4)
                
                TextField("Password", text: $password)
                    .frame(width: 330, height: 50, alignment: .center)
                    .background(.thinMaterial)
                    .cornerRadius(12)
                    .multilineTextAlignment(.center)
                    .shadow(radius: 4)
                
                TextField("Re-enter Password", text: $confirmPassword)
                    .frame(width: 330, height: 50, alignment: .center)
                    .background(.thinMaterial)
                    .cornerRadius(12)
                    .multilineTextAlignment(.center)
                    .shadow(radius: 4)
                
                Button("Submit", action: submitButtonPressed)
                    .frame(width: 250, height: 50, alignment: .center)
                    .foregroundColor(.primary)
                    .background(.mint)
                    .cornerRadius(12)
                    .shadow(radius: 4)
                    .padding(.top, 10)
                    .alert("Passwords do not match", isPresented: $isShowingAlert) {
                        Button("Ok") {
                            isShowingAlert = false
                        }
                    }
            }
            .frame(width: 375, height: 385, alignment: .center)
            .background(.ultraThinMaterial)
            .cornerRadius(12)
        }
        .navigationTitle("Register")
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
