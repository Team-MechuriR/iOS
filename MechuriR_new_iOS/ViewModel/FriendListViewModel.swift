//
//  FriendListViewModel.swift
//  MechuriR_new_iOS
//
//  Created by 황민채 on 2/4/24.
//

import Foundation

class FriendListViewModel: ObservableObject {
    @Published var isLoading: Bool = false
    @Published var searchResults: [User] = []
    @Published var viewState: ViewState = ViewState.empty
}
