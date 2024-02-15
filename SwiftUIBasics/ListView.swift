//
//  ListView.swift
//  SwiftUIBasics
//
//  Created by R K on 2/15/24.
//

import SwiftUI

struct ListView: View {
    @State private var users: [User] = [
        User(fname: "James", lname: "Smith", age: 64, email: "js@email.com"),
        User(fname: "Mary", lname: "Johnson", age: 75, email: "mj@email.com"),
        User(fname: "Robert", lname: "Williams", age: 54, email: "rw@email.com"),
        User(fname: "Patricia", lname: "Brown", age: 23, email: "pb@email.com"),
        User(fname: "John", lname: "Jones", age: 36, email: "jj@email.com"),
        User(fname: "Jennifer", lname: "Garcia", age: 42, email: "jg@email.com"),
        User(fname: "Michael", lname: "Miller", age: 22, email: "mm@email.com"),
        User(fname: "Linda", lname: "Davis", age: 82, email: "ld@email.com"),
        User(fname: "David", lname: "Rodriguez", age: 27, email: "dr@email.com"),
        User(fname: "Elizabeth", lname: "Martinez", age: 73, email: "em@email.com"),
        User(fname: "William", lname: "Hernandez", age: 64, email: "wh@email.com"),
        User(fname: "Barbara", lname: "Lopez", age: 30, email: "bl@email.com"),
        User(fname: "Richard", lname: "Gonzalez", age: 59, email: "rg@email.com"),
        User(fname: "Susan", lname: "Wilson", age: 40, email: "sw@email.com"),
        User(fname: "Joseph", lname: "Anderson", age: 90, email: "ja@email.com"),
        User(fname: "Jessica", lname: "Thomas", age: 26, email: "jt@email.com"),
        User(fname: "Thomas", lname: "Taylor", age: 21, email: "tt@email.com"),
        User(fname: "Sarah", lname: "Moore", age: 59, email: "sm@email.com"),
        User(fname: "Christopher", lname: "Jackson", age: 8, email: "cj@email.com"),
        User(fname: "Karen", lname: "Martin", age: 7, email: "km@email.com")
    ]
    private let rowHeight: CGFloat = 100
    
    var body: some View {
        List(users) { user in
            RowView(user: user, height: rowHeight)
                .padding(.horizontal)
        }
        .listRowSpacing(10)
        .navigationTitle("Users")
    }
}

#Preview {
    ListView()
}
