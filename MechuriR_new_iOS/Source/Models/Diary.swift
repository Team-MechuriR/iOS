//
//  Diary.swift
//  MechuriR_new_iOS
//
//  Created by 양승혜 on 2024/02/04.
//

import Foundation

struct Diary: Decodable {
    let diaryId, exDiaryId, userId: Int
    let createdDate, modifiedDate, writing, img: String
    
    enum CodingKeys: String, CodingKey {
        case diaryId, exDiaryId, userId, createdDate, modifiedDate, writing, img
    }
}
