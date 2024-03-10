//
//  Notice.swift
//  MechuriR_new_iOS
//
//  Created by 양승혜 on 2024/02/04.
//

import Foundation

struct Notice: Decodable {
    let noticeId, exDiaryId: Int
    let getUser, sendUser, noticeType, content, noticeURL, createdDate, modifiedDate, readCheck: String
    
    enum CodingKeys: String, CodingKey {
        case noticeId, exDiaryId, getUser, sendUser, noticeType, content, noticeURL, createdDate, modifiedDate, readCheck
    }
}
