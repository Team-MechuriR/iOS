//
//  MainView.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

// MARK: MainFrameView 구성 -> 네비게이션 바 타이틀을 이용해서 메추리알 이미지 + 햄버거 버튼

import SwiftUI

struct MainNavigationStack: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("bgColor").ignoresSafeArea()
                ScrollView {
            }
            .background(Color.bgColor)
            .navigationBarTitleDisplayMode(.inline) //네비게이션 타이틀은 꼭 네비게이션 뷰 안에서 사용해줘야 함
            .navigationBarBackButtonHidden (true) //뒤로가기 버튼 히든 하는 코드
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image("mechuri1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                }
                ToolbarItem(id: "Right", placement: .navigationBarTrailing, showsByDefault: true) {
                    
                    Button {
                        
                    } label: {
                        Image(systemName: " line.3.horizontal")
                            .foregroundStyle(Color.fontColor)
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
                }
                }
            }
        } //네비게이션 스택 끝
        
    }
}

#Preview {
    MainNavigationStack()
}
