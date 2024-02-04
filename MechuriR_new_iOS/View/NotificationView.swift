//
//  NotificationView.swift
//  MechuriR_new_iOS
//
//  Created by 황민채 on 2/4/24.
//

import SwiftUI

struct NotificationView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    //없는 버튼
                }label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color.btnColor)
                }
                .padding()
                
                Spacer()
                
                Text("알림")
                    .font(.cafe2418)
                    .foregroundStyle(Color.fontColor)
                    .bold()
                    .padding()
                
                Spacer()
                
                Button {
                    dismiss()
                }label: {
                    Image(systemName: "xmark")
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.fontColor)
                }
                .padding()
                
            }
            .background(Rectangle()
                .fill(Color.btnColor)
                .frame(height: 45)
            )
            ScrollView(.vertical) {
                VStack {
                    LazyVStack(spacing: 8) {
                        ForEach(1...10, id: \.self) { _ in
                            NotificationCellView(noticeType: "newDiaryGroup",
                                                 noticeContent: "새로운 일기장 [멍충멍충] 에 초대되었어요.")
                            
                        }
                    }
                }
                .padding(.bottom)
            }
        }
        .background(Color.white)
    }
}

#Preview {
    NotificationView()
}
