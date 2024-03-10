//
//  TeamMember.swift
//  MechuriR_new_iOS
//
//  Created by 양승혜 on 2024/02/04.
//

import Foundation

struct TeamMember: Decodable {
    
    let teamMemberId, exDiaryId: Int
    let memberId: Int?
    let memberName, createdDate, modifiedDate, status, profile: String
    
    enum CodingKeys: String, CodingKey {
        case teamMemberId, exDiaryId, memberId, memberName, createdDate, modifiedDate, status, profile //profile = 임시
    }
}
