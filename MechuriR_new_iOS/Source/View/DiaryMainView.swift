//
//  DiaryMainView.swift
//  MechuriR_new_iOS
//
//  Created by 양승혜 on 2024/01/28.
//

import SwiftUI

struct DiaryMainView: View {
    @StateObject var exDiaryStore: ExDiaryStore = ExDiaryStore(exDiary: exDiaryData)
    var columns = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        TopCell()

        VStack {
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(exDiaryStore.exDiary, id: \.self.exDiaryId) {
                        exDiary in
                        NavigationLink {
                            
                        } label: {
                            MainViewCell(exDiary: exDiary)
                        }
                    }
                }
            } // scrollview
            } // vstack
        .background(Color.white)
        }
    }

#Preview {
    DiaryMainView()
}
