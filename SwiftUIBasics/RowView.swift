//
//  RowView.swift
//  SwiftUIBasics
//
//  Created by R K on 2/15/24.
//

import SwiftUI

struct RowView: View {
    let user: User
    let height: CGFloat
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            VStack(alignment: .leading, spacing: 7) {
                Text("Name: \(user.fname) \(user.lname)")
                
                Text("Age: \(user.age)")
                
                Text("Email: \(user.email)")
            }
            .frame(maxHeight: height * 0.8)
            
            Spacer()
            
            Image(systemName: "person.circle")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.blue)
                .frame(maxHeight: height * 0.8)
        }
        .frame(maxHeight: height)
        .fixedSize(horizontal: false, vertical: true)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    RowView(user: User(fname: "Bob", lname: "Long", age: 52, email: "bl@email.com"), height: 150)
}
