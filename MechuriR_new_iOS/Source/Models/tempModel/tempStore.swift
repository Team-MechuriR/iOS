//
//  tempStore.swift
//  MechuriR_new_iOS
//
//  Created by 양승혜 on 2024/02/04.
//

import SwiftUI
import Combine

var noticeData: [Notice] = loadJson("noticeData.json")
var teamMemberData: [TeamMember] = loadJson("teamMemberData.json")
var diaryData: [Diary] = loadJson("diaryData.json")
var exDiaryData: [ExDiary] = loadJson("exDiaryData.json")
var commentData: [Comment] = loadJson("commentData.json")
var userData: [User] = loadJson("userData.json")

class NoticeStore : ObservableObject {
    
    @Published var notice: [Notice]
    
    init (notice: [Notice] = []) {
        self.notice = notice
    }
}

class TeamMemberStore : ObservableObject {
    
    @Published var teamMember: [TeamMember]
    
    init (teamMember: [TeamMember] = []) {
        self.teamMember = teamMember
    }
}

class DiaryStore : ObservableObject {
    
    @Published var diary: [Diary]
    
    init (diary: [Diary] = []) {
        self.diary = diary
    }
}

class ExDiaryStore : ObservableObject {
    
    @Published var exDiary: [ExDiary]
    
    init (exDiary: [ExDiary] = []) {
        self.exDiary = exDiary
    }
}

class CommentStore : ObservableObject {
    
    @Published var comment: [Comment]
    
    init (comment: [Comment] = []) {
        self.comment = comment
    }
}

class UserStore : ObservableObject {
    
    @Published var user: [User]
    
    init (user: [User] = []) {
        self.user = user
    }
}
