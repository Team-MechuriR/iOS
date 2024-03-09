//
//  MakeDiaryView.swift
//  MechuriR_new_iOS
//
//  Created by 양승혜 on 2024/02/04.
//

import SwiftUI

struct MakeDiaryView: View {
    @State private var newDiaryName: String = ""
    @State private var date: String = ""
    
    var body: some View {
        MakeDiaryTopCell()
        
        VStack {
            VStack {
                // 1
                TextField(text: $newDiaryName, prompt: Text("일기장 이름을 입력하세요.")
                    .font(.cafe2418)
                    .foregroundStyle(Color.emptyFontColor),
                          label: {})
                .padding(.horizontal, 15)
                .foregroundStyle(Color.fontColor)
                .font(.cafe2418) //텍스트 썼을 경우에
            }
            .frame(height: 35)
            
            Divider()
                .frame(height: 2)
                .background(Color.deviderColor)
            
            // 2
            HStack{
                TextField(text: $date, prompt: Text("2024.02.04.(일)")
                    .font(.cafe2418)
                    .foregroundStyle(Color.fontColor),
                          label: {})
                .padding(.horizontal, 15)
                .foregroundStyle(Color.fontColor)
                .font(.cafe2418) //텍스트 썼을 경우에
                
                Text("종일")
                    .font(.cafe2418)
                    .foregroundStyle(Color.fontColor)
                    .padding(.horizontal, 15)
                    .padding(.vertical, 5)
                
            }
            Divider()
                .frame(height: 2)
                .background(Color.deviderColor)
            
            // 3
            HStack {
                Image("placeIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(Color.fontColor)
                    .padding(.horizontal, 15)
                    .padding(.vertical, 5)
                TextField(text: $newDiaryName, prompt: Text("장소")
                    .font(.cafe2418)
                    .foregroundStyle(Color.emptyFontColor),
                          label: {})
                .foregroundStyle(Color.fontColor)
                .font(.cafe2418) //텍스트 썼을 경우에
            }
            
            
            Divider()
                .frame(height: 2)
                .background(Color.deviderColor)
            
            // 4
            HStack {
                Image("descriptionIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(Color.fontColor)
                    .padding(.horizontal, 15)
                    .padding(.vertical, 5)
                TextField(text: $newDiaryName, prompt: Text("설명")
                    .font(.cafe2418)
                    .foregroundStyle(Color.emptyFontColor),
                          label: {})
                .foregroundStyle(Color.fontColor)
                .font(.cafe2418) //텍스트 썼을 경우에
            }
            Divider()
                .frame(height: 2)
                .background(Color.deviderColor)
            
            // 5
            HStack {
                Image("colorIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color.fontColor)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 5)
                TextField(text: $newDiaryName, prompt: Text("색상")
                    .font(.cafe2418)
                    .foregroundStyle(Color.emptyFontColor),
                          label: {})
                .foregroundStyle(Color.fontColor)
                .font(.cafe2418) //텍스트 썼을 경우에
            }
            Divider()
                .frame(height: 2)
                .background(Color.deviderColor)
            
            // 6
            HStack {
                Image("membersIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(Color.fontColor)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 5)
                TextField(text: $newDiaryName, prompt: Text("멤버")
                    .font(.cafe2418)
                    .foregroundStyle(Color.emptyFontColor),
                          label: {})
                .foregroundStyle(Color.fontColor)
                .font(.cafe2418) //텍스트 썼을 경우에
                
                Button {
                    // 친구 추가
                } label: {
                    Image(systemName: "plus")
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.fontColor)
                        .padding(.horizontal, 15)
                    .padding(.vertical, 5)                }
                
            }
            Divider()
                .frame(height: 2)
                .background(Color.deviderColor)
        } // vstack
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.white)
        .ignoresSafeArea()
        
    }
    
}




#Preview {
    MakeDiaryView()
}
