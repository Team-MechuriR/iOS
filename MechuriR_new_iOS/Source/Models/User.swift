//
//  User.swift
//  MechuriR_new_iOS
//
//  Created by 양승혜 on 2024/02/04.
//

import Foundation

struct User: Decodable {
    let userId, userName, userProfileImage, userCode: String
    
    enum CodingKeys: String, CodingKey {
        case userId, userName, userProfileImage, userCode
    }
}
