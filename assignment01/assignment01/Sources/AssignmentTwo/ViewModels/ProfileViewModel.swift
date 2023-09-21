//
//  ProfileViewModel.swift
//  assignment01
//
//  Created by Sanghun K. on 9/21/23.
//

import Foundation

class ProfileViewModel {
    
    private var user: User

       init(user: User) {
           self.user = user
       }

       var userName: String {
           return user.userName
       }

       var userAge: Int {
           return user.userAge
       }
    
}
