//
//  AddFreindListCellView.swift
//  MechuriR_new_iOS
//
//  Created by 황민채 on 2/4/24.
//

import SwiftUI

struct AddFreindListCellView: View {
    var friendName: String = "승혜"
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
                
                Text("")
                
                Button {
                    
                } label: {
                    Image("plusIcon")
                }
            }
            .padding(.trailing)
        }
    }
}

#Preview {
    AddFreindListCellView()
}
