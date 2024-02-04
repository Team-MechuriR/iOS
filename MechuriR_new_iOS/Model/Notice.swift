//
//  Notice.swift
//  MechuriR_new_iOS
//
//  Created by 황민채 on 2/4/24.
//
import Foundation

struct Notice: Decodable {
    var noticeId: Int
    var exDiaryId: Int
    var getUser: String
    var sendUser: String
    var noticeType: String
    var content: String
    var noticeURL: String
    var createdDate: String
    var modifiedDate: String
    var readCheck: String
    
    enum CodingKeys: String, CodingKey {
        case noticeId
        case exDiaryId
        case getUser
        case sendUser
        case noticeType
        case content
        case noticeURL
        case createdDate
        case modifiedDate
        case readCheck
    }
}
