//
//  DummyStoreManager.swift
//  ConversationsApp
//
//  Created by apple on 09.06.2024.
//
import Foundation

protocol DummyStoreManagerProtocol {
    var persons: [Person] { get }
    var conversations: [Conversation] { get }
    var myConversations: [Conversation] { get }

}

class DummyStoreManager: DummyStoreManagerProtocol {
    
    static let shared = DummyStoreManager()
    
    var persons: [Person] = []
    var conversations: [Conversation] = []
    var myConversations: [Conversation] = []

    
    private var person1 = Person(name: "Sre", surname: "Detg", mail: "erf@fdfd.fd")
    private var person2 = Person(name: "Fgfg", surname: "SDftg", mail: "sDftg@fdfd.fd")
    private var person3 = Person(name: "Fdff", surname: "Fdfds", mail: "rdfds@fdfd.fd")

    
    private var conversation1: Conversation = {
        let person1 = Person(name: "John", surname: "Doe", mail: "john.doe@example.com")
        
        let speech1 = Speech(firstPersonSpeech: "Hello, how are you?", secondPersonSpeech: "I'm good, thanks! How about you?")
        let speech2 = Speech(firstPersonSpeech: "I'm doing well, thank you.", secondPersonSpeech: "Glad to hear that!")
        
        let conversation1 = Conversation(
            imageName: "planning",
            dialog: [speech1, speech2],
            tags: ["greeting", "small talk"],
            author: person1
        )
        return conversation1
    }()
    
    private var conversation2: Conversation = {
        let person2 = Person(name: "Jane", surname: "Smith", mail: "jane.smith@example.com")
        
        let speech3 = Speech(firstPersonSpeech: "What's your plan for today?", secondPersonSpeech: "I have a meeting in the afternoon.")
        let speech4 = Speech(firstPersonSpeech: "I hope it goes well.", secondPersonSpeech: "Thank you!")
        
        let conversation2 = Conversation(
            imageName: "hello",
            dialog: [speech3, speech4],
            tags: ["daily routine", "work"],
            author: person2
        )
        return conversation2
    }()
    private var conversation3: Conversation = {
        let person1 = Person(name: "Rerre", surname: "Toe", mail: "Rerre.doe@example.com")
        
        let speech1 = Speech(firstPersonSpeech: "Hello, how are you?", secondPersonSpeech: "I'm good, thanks! How about you?")
        let speech2 = Speech(firstPersonSpeech: "I'm doing well, thank you.", secondPersonSpeech: "Glad to hear that!")
        
        let conversation1 = Conversation(
            imageName: "task",
            dialog: [speech1, speech2],
            tags: ["greeting", "small talk"],
            author: person1
        )
        return conversation1
    }()
    
    private var conversation4: Conversation = {
        let person2 = Person(name: "Yane", surname: "ERith", mail: "ERith.smith@example.com")
        
        let speech3 = Speech(firstPersonSpeech: "What's your plan for today?", secondPersonSpeech: "I have a meeting in the afternoon.")
        let speech4 = Speech(firstPersonSpeech: "I hope it goes well.", secondPersonSpeech: "Thank you!")
        
        let conversation2 = Conversation(
            imageName: "hello 1",
            dialog: [speech3, speech4],
            tags: ["daily routine", "work"],
            author: person2
        )
        return conversation2
    }()
    
    // Private initializer to prevent creating additional instances
     init() {
        self.conversations = [conversation1, conversation2]
         self.myConversations = [conversation2, conversation3, conversation4]

        self.persons = [person1, person2, person3]
    }
}

