//
//  AddViewViewModel.swift
//  ConversationsApp
//
//  Created by apple on 10.06.2024.
//

import Foundation


import SwiftUI
import Combine

protocol AddViewViewModelProtocol: ObservableObject {
    var myConversations: [Conversation] {get}
    var tags: [String] {get}
    
}

class AddViewViewModel: AddViewViewModelProtocol{
    
    var tags: [String] {
        return myConversations.flatMap{$0.tags}
    }
    
    @Published var myConversations: [Conversation]
    
    init(dummyStoreManager: DummyStoreManagerProtocol) {
        myConversations = dummyStoreManager.myConversations
    }
    
}
