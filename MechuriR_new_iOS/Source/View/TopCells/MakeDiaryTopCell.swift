//
//  MyPageTopCell.swift
//  MechuriR_new_iOS
//
//  Created by 양승혜 on 2024/02/04.
//

import SwiftUI

struct MakeDiaryTopCell: View {
    var body: some View {
        HStack {
            // button 1 - x button
            Button {
                // TODO : X 동작
            } label: {
                Image(systemName: "xmark")
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.fontColor)

            }
            .padding()
            
            Spacer()
            
            // text = mypage
            Text("일기장")
                .font(.cafe2418)
                .foregroundStyle(Color.fontColor)
                .bold()
                .padding()
            
            Spacer()
            
            // button 3 - check button
            Button {
                // TODO : checkmark, save
            } label: {
                Image(systemName: "checkmark")
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.fontColor)

            }
            .padding()
            
        }
        
        .background(Rectangle()
            .fill(Color.btnColor)
            .frame(height: 45)
        )

    }
    }


#Preview {
    MakeDiaryTopCell()
}
