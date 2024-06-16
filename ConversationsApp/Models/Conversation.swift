//
//  Conversation.swift
//  ConversationsApp
//
//  Created by apple on 09.06.2024.
//

import Foundation

struct Conversation: Codable, Identifiable {
    var id = UUID()
    let imageName: String
    let dialog: [Speech]
    let tags: [String]
    let author: Person

}
