//
//  SearchBar.swift
//  MechuriR_new_iOS
//
//  Created by 황민채 on 2/4/24.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isLoading: Bool
    
    @State private var isEditing = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(Color.gray)
                        .padding(.leading, 10)
                    
                    TextField("", text: $text,
                              prompt: Text("친구코드 / 친구 이름 검색")
                        .font(.cafe2415)
                        .foregroundStyle(Color.emptyFontColor))
                    .tint(.gray)
                    .padding(7)
                    .padding(.leading, -7)
                    .foregroundStyle(Color.white)
                    .accentColor(Color.gray)
                    .cornerRadius(8)
                    .onTapGesture {
                        withAnimation {
                            isEditing = true
                        }
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 10) // HStack의 크기에 맞게 동적으로 크기가 변하는 RoundedRectangle
                        .fill(Color.white)
                )
                .overlay {
                    HStack {
                        Spacer()
                        if isEditing && !text.isEmpty {
                            if isLoading {
                                Button {
                                    text = ""
                                } label: {
                                    ProgressView()
                                }
                                .padding(.trailing, 15)
                                .frame(width: 35, height: 35)
                            } else {
                                Button(action: {
                                    text = ""
                                }) {
                                    Image(systemName: "xmark.circle.fill")
                                        .foregroundStyle(Color.gray)
                                        .frame(width: 35, height: 35)
                                }
                                .padding(.trailing, 5)
                            }
                        }
                    }
                }
                if isEditing {
                    Button {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            text = ""
                            isEditing = false
                            hideKeyboard()
                        }
                    } label: {
                        Text("취소")
                            .font(.cafe2415)
                            .foregroundStyle(Color.fontColor)
                    }
                    .padding(3)
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 5)
        }
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#Preview {
    AddFriendListView()
}
