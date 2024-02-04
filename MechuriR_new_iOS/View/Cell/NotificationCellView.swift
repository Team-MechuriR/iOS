//
//  NotificationCell.swift
//  MechuriR_new_iOS
//
//  Created by 황민채 on 2/4/24.
//

import SwiftUI

struct NotificationCellView: View {
    var noticeType: String
    var noticeContent: String
    
    @State var width = UIScreen.main.bounds.width
    @State var height = UIScreen.main.bounds.height
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(noticeType)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25)
                
                Text(noticeContent)
                    .font(.cafe24Air15)
                    .foregroundStyle(Color.fontColor)
            }
            .padding(.horizontal)
            Divider()
                .frame(width: width * 1, height: 2)
                .background(Color.deviderColor)
        }
    }
}
