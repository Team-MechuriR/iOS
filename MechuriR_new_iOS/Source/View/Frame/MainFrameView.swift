//
//  MainView.swift
//  MechuriR_new_iOS
//
//  Created by 양승혜 on 2024/02/04.
//

import SwiftUI

struct MainFrameView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    ScrollView {
                        // 내용
                    }
                    .background(Color.bgColor)
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Button {
                                // action
                            } label: {
                                Image("mechuri1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                            }
                        }
                        ToolbarItem(placement: .topBarTrailing) {
                            Button {
                                // action
                            } label: {
                                Image(systemName: "line.3.horizontal")
                                    .foregroundStyle(Color.fontColor)
                                    .font(.subheadline)
                                    .bold()
                            }
                        }
                        
                    }
                    }
             
            } // vstack
            

                        
        } // NavigationStack
        
        
    }
}





#Preview {
    MainFrameView()
}
