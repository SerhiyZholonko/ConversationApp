//
//  Person.swift
//  ConversationsApp
//
//  Created by apple on 09.06.2024.
//

import Foundation

struct Person: Codable, Identifiable {
    var id = UUID()
    let name: String
    let surname: String
    let mail: String
    var conversations: [Conversation]?
    
    

}
