//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by R K on 2/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 20) {
                Image(systemName: "globe")
                    .resizable()
                    .imageScale(.large)
                    .scaledToFit()
                    .foregroundStyle(.brown)
                Text("Hello, world!")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundStyle(.blue)
            }
            .padding()
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                NavigationLink {
                    NextView()
                } label: {
                    Text("Next")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
