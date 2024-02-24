//
//  NextView.swift
//  SwiftUIBasics
//
//  Created by R K on 2/13/24.
//

import SwiftUI

struct NextView: View {
    @State private var text = ""
    @State private var display = ""
    @FocusState private var tfIsFocused: Bool
    
    @State private var pw = ""
    @FocusState private var pwIsFocused: Bool
    
    @State private var presentConfirmation = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("I'm another view!")
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundStyle(.blue)
            
            HStack(alignment: .center, spacing: 20) {
                Image(systemName: "globe.europe.africa")
                    .resizable()
                    .imageScale(.large)
                    .scaledToFit()
                    .foregroundStyle(.brown)
                
                Image(systemName: "globe.americas")
                    .resizable()
                    .imageScale(.large)
                    .scaledToFit()
                    .foregroundStyle(.brown)
            }
            
            Text(display)
                .font(.title)
                .fontWeight(.medium)
            
            TextField("Type something here", text: $text)
                .focused($tfIsFocused)
                .textFieldStyle(.roundedBorder)
                .presentationCornerRadius(8)
                .multilineTextAlignment(.leading)
                .padding(3)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
                .border(.secondary)
                .onSubmit {
                    display = text
                }
            
            SecureField("Password", text: $pw)
                .focused($pwIsFocused)
                .textFieldStyle(.roundedBorder)
                .presentationCornerRadius(8)
                .multilineTextAlignment(.leading)
                .padding(3)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
                .border(.secondary)
                .onSubmit {
                    print("Password entered")
                }
            
            Spacer()
            
            Button {
                presentConfirmation = true
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.blue)
                    
                    Text("Display alert")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding()
                }
                .frame(maxHeight: 50)
            }
            .confirmationDialog("ConfirmTapped", isPresented: $presentConfirmation) {
                Button {
                    presentConfirmation = false
                } label: {
                    Text("Submit")
                }
            }
        }
        .padding()
        .toolbar {
            NavigationLink {
                ListView()
            } label: {
                Image(systemName: "line.3.horizontal")
            }
        }
        .ignoresSafeArea(.keyboard)
    }
}

#Preview {
    NextView()
}
