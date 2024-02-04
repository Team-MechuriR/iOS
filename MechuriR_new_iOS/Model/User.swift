//
//  User.swift
//  MechuriR_new_iOS
//
//  Created by 황민채 on 2/4/24.
//

import Foundation

struct User: Decodable, Hashable {
    var userId: String
    var userName: String
    var userProfileImage: String
    var userCode: String
}
