//
//  ReceivedLetterCellView.swift
//  MechuriR_new_iOS
//
//  Created by 황민채 on 2/4/24.
//

import SwiftUI

struct ReceivedLetterCellView: View {
    var letterWatchedStatus: String
    var letterContent: String
    
    @State var width = UIScreen.main.bounds.width
    @State var height = UIScreen.main.bounds.height
    
    var body: some View {
        VStack {
            HStack {
                Image(letterWatchedStatus)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25)
                
                Text(letterContent)
                    .font(.cafe24Air15)
                    .foregroundStyle(Color.fontColor)
                
                Spacer()
                
                Image(systemName: "arrow.forward")
                    .foregroundStyle(Color.fontColor)
            }
            
            Divider()
                .frame(width: width * 1, height: 2)
                .background(Color.deviderColor)
        }
    }
}

