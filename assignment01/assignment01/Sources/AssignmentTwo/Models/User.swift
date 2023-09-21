//
//  User.swift
//  assignment01
//
//  Created by Sanghun K. on 9/21/23.
//

import Foundation

struct User {
    var userName: String
    var userAge: Int
}

extension User {
    static let dummyData: User = User(userName: "김상훈", userAge: 30)
}
