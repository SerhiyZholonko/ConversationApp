//
//  MainViewViewModel.swift
//  ConversationsApp
//
//  Created by apple on 09.06.2024.
//

import SwiftUI
import Combine

protocol MainViewViewModelProtocol: ObservableObject {
     var friends: [Person] {get}
    var conversations: [Conversation] {get}
    var tags: [String] {get}
    var searchText: String {get}
}

class MainViewViewModel: MainViewViewModelProtocol{
    @State var searchText: String = ""
    
    var tags: [String] {
        return conversations.flatMap{$0.tags}
    }
    
    @Published var conversations: [Conversation]
    
    @Published var friends: [Person] = []
    
    init(dummyStoreManager: DummyStoreManagerProtocol) {
        friends = dummyStoreManager.persons
        conversations = dummyStoreManager.conversations
    }
    
}
