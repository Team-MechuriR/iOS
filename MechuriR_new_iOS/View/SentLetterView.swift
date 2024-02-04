//
//  SentLetterView.swift
//  MechuriR_new_iOS
//
//  Created by 황민채 on 2/4/24.
//

import SwiftUI

struct SentLetterView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            Color.bgColor.ignoresSafeArea()
            VStack {
                // 탑셀
                HStack{
                    Button {
                        //없는 버튼
                    }label: {
                        Image(systemName: "xmark")
                            .foregroundStyle(Color.btnColor)
                    }
                    .padding()
                    
                    Spacer()
                    
                    Text("보낸 편지")
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
                
                VStack {
                    ScrollView(.vertical) {
                        VStack {
                            LazyVStack(spacing: 8) {
                                ForEach(1...10, id: \.self) { _ in
                                    SentLetterCellView(letterStatus: "전달대기", letterContent: "ㅁ아ㅓ림")
                                        .padding(.horizontal)
                                }
                            }
                        }
                        .padding(.bottom)
                    }
                }
            }
        }
    }
}
