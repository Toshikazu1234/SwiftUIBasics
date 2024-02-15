//
//  User.swift
//  SwiftUIBasics
//
//  Created by R K on 2/15/24.
//

import Foundation

struct User: Identifiable {
    let id = UUID().uuidString
    let fname: String
    let lname: String
    let age: Int
    let email: String
}
