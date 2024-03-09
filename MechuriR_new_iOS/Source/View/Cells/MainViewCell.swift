//
//  MainViewCell.swift
//  MechuriR_new_iOS
//
//  Created by 양승혜 on 2024/02/04.
//

import SwiftUI

struct MainViewCell: View {
    var exDiary: ExDiary
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Image(exDiary.img)
                .resizable()
                .frame(width: 170, height: 170)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Text(exDiary.exDiaryName)
                .font(.cafe2418)
                .foregroundStyle(Color.fontColor)
                .padding(.leading, 5)
            
            let startDate = exDiary.startDate.prefix(10).components(separatedBy: "-")
            let finishDate = exDiary.finishDate.prefix(10).components(separatedBy: "-")
            
            Text("🕰️\(startDate[0]).\(startDate[1]).\(startDate[2]) ~ \(finishDate[0]).\(finishDate[1]).\(finishDate[2])")
                .font(.custom("Cafe24SsurroundAir", size: 12))
                .foregroundStyle(Color.gray)
            
            
            
        }
        .padding(7)
        .background(Rectangle()
            .fill(Color.diaryBgColor)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        )
    }
}
