//
//  friendsListCell.swift
//  MechuriR_new_iOS
//
//  Created by 황민채 on 2/4/24.
//

import SwiftUI

struct FriendListCellView: View {
    var friendName: String = "민채"
    var friendProfileImage: String = "sampleProfileImage"
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .frame(height: 45)
            
            HStack {
                Image(friendProfileImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                    .padding(.horizontal)
                
                Text(friendName)
                    .font(.cafe2415)
                    .foregroundStyle(Color.fontColor)
                    .padding(.horizontal, -5)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "paperplane")
                        .foregroundStyle(Color.fontColor)
                }
                
                Button {
                    
                } label: {
                    Image("minusIcon")
                }
            }
            .padding(.trailing)
        }
    }
}

#Preview {
    FriendListCellView()
}
