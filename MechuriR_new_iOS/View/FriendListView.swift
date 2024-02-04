//
//  FriendListView.swift
//  MechuriR_new_iOS
//
//  Created by 황민채 on 2/4/24.
//

import SwiftUI

struct FriendListView: View {
    @State var friendListSearch: String = ""
    @ObservedObject var viewModel = FriendListViewModel()
    
    var body: some View {
        let searchTextBinding = Binding {
            return friendListSearch
        } set: {
            friendListSearch = $0
            //viewModel.updateSearchText(with: $0) -> 나중에 추가
        }
        
        ZStack {
            Color.bgColor.ignoresSafeArea()
            VStack {
                HStack {
                    Button {
                        
                    }label: {
                        Image(systemName: "arrow.backward")
                            .fontWeight(.heavy)
                            .foregroundStyle(Color.btnColor)
                    }
                    .padding()
                    
                    Spacer()
                    
                    Text("친구 목록")
                        .font(.cafe2418)
                        .foregroundStyle(Color.fontColor)
                        .bold()
                        .padding()
                    
                    Spacer()
                    
                    Button {
                        
                    }label: {
                        Image(systemName: "person.badge.plus")
                            .fontWeight(.heavy)
                            .foregroundStyle(Color.fontColor)
                    }
                    .padding()
                    
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
                                    FriendListCellView()
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
    FriendListView()
}
