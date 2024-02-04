//
//  AddFriendView.swift
//  MechuriR_new_iOS
//
//  Created by 황민채 on 2/4/24.
//

import SwiftUI

struct AddFriendListView: View {
    @State var userListSearch: String = ""
    @ObservedObject var viewModel = FriendListViewModel()

    var body: some View {
        let searchTextBinding = Binding {
            return userListSearch
        } set: {
            userListSearch = $0
            //viewModel.updateSearchText(with: $0) -> 나중에 추가
        }
        ZStack {
            Color.bgColor.ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    
                    Text("친구 추가")
                        .font(.cafe2418)
                        .foregroundStyle(Color.fontColor)
                        .bold()
                        .padding()
                    
                    Spacer()
                }
                .background(Rectangle()
                    .fill(Color.btnColor)
                    .frame(height: 45)
                )
                
                SearchBar(text: searchTextBinding, isLoading: $viewModel.isLoading)
                
                VStack {
                    ScrollView(.vertical) {
                        VStack {
                            LazyVStack(spacing: 8) {
                                ForEach(1...10, id: \.self) { _ in
                                    AddFreindListCellView()
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

#Preview {
    AddFriendListView()
}
