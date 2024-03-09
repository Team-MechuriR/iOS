//
//  Comment.swift
//  MechuriR_new_iOS
//
//  Created by 양승혜 on 2024/02/04.
//

import Foundation

struct Comment: Decodable {
    let commentId, diaryId: Int
    let createdDate, modifiedDate, writer, content: String
    
    enum CodingKeys: String, CodingKey {
        case commentId, diaryId, createdDate, modifiedDate, writer, content
    }
}
