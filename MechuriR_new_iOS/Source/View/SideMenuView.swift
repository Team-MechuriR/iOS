//
//  SideMenuView.swift
//  MechuriR_new_iOS
//
//  Created by 양승혜 on 2024/02/05.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack {
          
            HStack {
                Spacer()
                Image(systemName: "xmark")
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
            }
           
            
            HStack {
                Spacer()
                Image("sampleProfileImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 60)
                Text("[이름]")
                    .foregroundStyle(Color.nameColor)
                    .font(.cafe2418)

                Text("님")
                    .foregroundStyle(Color.white)
                    .font(.cafe2418)
                
            Spacer()
               Image(systemName: "bell")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(Color.white)
                    .frame(width: 20)
                    .font(.cafe2418)
                    Spacer()

            }
            
    
            Divider()
                .frame(height: 3)
                .background(Color.deviderColor)
                .padding(.horizontal, 30)

            
                // 1 mypage
                Button {
                    // go to mypage
                } label: {
                    HStack {
                        Image(systemName: "person")
                            .foregroundStyle(Color.white)
                            .font(.cafe2418)

                        Text("마이페이지")
                            .foregroundStyle(Color.white)
                            .font(.cafe2418)

                    }
                }
                .padding(.top, 10)
            // 2 friends
            Button {
                // go to mypage
            } label: {
                HStack {
                    Image(systemName: "person.3")
                        .foregroundStyle(Color.white)
                        .font(.cafe2418)

                    Text("친구 목록")
                        .foregroundStyle(Color.white)
                        .font(.cafe2418)
                    

                }
            }
            .padding(.top, 10)
            
            // 3 친구 추가
            Button {
                // go to plus new friend
            } label: {
                HStack {
                    Image("newFriend")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40)
                    Text("친구 추가")
                        .foregroundStyle(Color.white)
                        .font(.cafe2418)
                        
                }
            }
            .padding(.top, 10)
            
            // 4 받은 편지
            Button {
                //
            } label: {
                HStack {
                    Image("newLetter")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40)

                    Text("받은 편지")
                        .foregroundStyle(Color.white)
                        .font(.cafe2418)

                }
            }
            .padding(.top, 5)
            
            // 5 보낸 편지
            Button {
                //
            } label: {
                HStack {
                    Image(systemName: "paperplane")
                        .foregroundStyle(Color.white)
                        .font(.cafe2418)

                    Text("보낸 편지")
                        .foregroundStyle(Color.white)
                        .font(.cafe2418)

                }
            }
            .padding(.top, 10)
            
            Divider()
                .frame(height: 3)
                .background(Color.deviderColor)
                .padding(.top, 10)
                .padding(.horizontal, 30)

            
            Button {
                //
            } label: {
                HStack {
                    Image(systemName: "info.circle")
                        .foregroundStyle(Color.white)
                        .font(.cafe2418)

                    Text("개발자 알아보기")
                        .foregroundStyle(Color.white)
                        .font(.cafe2418)

                }
            }
            .padding(.top, 10)

            
            Button {
                // go to mypage
            } label: {
                HStack {
                    Image(systemName: "square.and.arrow.up")
                        .foregroundStyle(Color.white)
                        .font(.cafe2418)
                        .padding(.top, 10)

                    Text("친구에게 공유하기")
                        .foregroundStyle(Color.white)
                        .font(.cafe2418)
                        .padding(.top, 10)

                }
            }
            
            Divider()
                .frame(height: 3)
                .background(Color.deviderColor)
                .padding(.top, 10)
                .padding(.horizontal, 10)
            Spacer()
            
            
        } //vstack
        .background(Color.sideViewColor) 
    }
}


#Preview {
    SideMenuView()
}
