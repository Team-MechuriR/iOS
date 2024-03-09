//
//  WriteDiaryView.swift
//  MechuriR_new_iOS
//
//  Created by 양승혜 on 2024/01/28.
//

import SwiftUI

struct TopCell: View {
    var body: some View {
        HStack {
            Text("[username]의 일기장")
                .font(.cafe2418)
                .foregroundStyle(Color.fontColor)
                .bold()
                .padding()
            Spacer()
        }
        
        .background(Rectangle()
            .fill(Color.btnColor)
            .frame(height: 45)
        )

    }
}

#Preview {
    TopCell()
}
