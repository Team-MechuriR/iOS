//
//  MyPageView.swift
//  MechuriR_new_iOS
//
//  Created by 양승혜 on 2024/02/04.
//

import SwiftUI

struct MyPageView: View {
    @State var userName = ""
    
    var userCode: String = "jdkfj2233"
    var body: some View {
        MyPageTopCell()
        VStack {
            Image("sampleProfileImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(Color.btnColor, lineWidth: 5)
                }
                .frame(width: 250, height: 250)
            
            HStack {
                
                Spacer()
                
                TextField("[username]", text: $userName)
                    .frame(width: 120)
                    .font(.cafe2418)
                    .foregroundColor(Color.fontColor)
                    .bold()
                Button {
                    // TODO: 수정 버튼 누르면 수정되게
                } label: {
                    Image(systemName: "pencil")
                        .foregroundColor(Color.emptyFontColor)
                        .fontWeight(.heavy)
                }
                
                Spacer()
                
            } // hstack
            
            .padding(5)
            
            Divider()
                .frame(height: 4)
                .background(Color.deviderColor)
            
            HStack {
                Text("친구 추가 코드")
                    .font(.cafe2418)
                    .foregroundColor(Color.fontColor)
                
                Spacer()
                
                Text(userCode)
                    .font(.cafe2418)
                    .foregroundColor(Color.fontColor)
                
                Button {
                    // TODO : 복사하는 기능 넣기
                } label: {
                    Image(systemName: "square.on.square")
                        .foregroundStyle(Color.emptyFontColor)
                        .fontWeight(.heavy)
                    
                }
                
            } // hstack
            .padding(.horizontal, 30)
            Spacer()

        }// vstack
        .background(Color.white)

                
    }
}

#Preview {
    MyPageView()
}
