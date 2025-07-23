//
//  ContentView.swift
//  InteractiveUI
//
//  Created by rwalther28 on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    
    @State private var textTitle = "What is your name?"
    
    // alert
    @State private var presentAlert = false
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            TextField("Type your name here", text:$name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            .padding()
            TextField("Enter your email", text:$email)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            .padding()
            Button("Submit Name") {
                presentAlert = true
                textTitle = "Welcome, \(name)!"
            }
            
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
        }
        .padding()
        .alert("Submission Received", isPresented: $presentAlert) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("Thanks, \(name)! We have your email as \(email).")
        }
    }
}

#Preview {
    ContentView()
}
