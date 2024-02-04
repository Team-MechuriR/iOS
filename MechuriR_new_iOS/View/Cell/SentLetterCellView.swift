//
//  SentLetterCellView.swift
//  MechuriR_new_iOS
//
//  Created by 황민채 on 2/4/24.
//

import SwiftUI

struct SentLetterCellView: View {
    var letterStatus: String
    var letterContent: String
    
    @State var width = UIScreen.main.bounds.width
    @State var height = UIScreen.main.bounds.height
    
    var body: some View {
        VStack {
            HStack {
                Image("newLetter")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25)
                
                Text(letterContent)
                    .font(.cafe24Air15)
                    .foregroundStyle(Color.fontColor)
                
                Spacer()
                
                Image(letterStatus)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60)
            }

            Divider()
                .frame(width: width * 1, height: 2)
                .background(Color.deviderColor)
        }
    }
}


#Preview {
    SentLetterView()
}

