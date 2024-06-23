//
//  ChatView.swift
//  ConversationsApp
//
//  Created by apple on 20.06.2024.
//
import SwiftUI

struct Message: Identifiable, Hashable {
    let id = UUID()
    let text: String
    let isUser: Bool
}

struct ChatView: View {
    @State private var messages: [Message] = [
        Message(text: "Hello!", isUser: false),
        Message(text: "Hi, how are you?", isUser: true),
        Message(text: "I'm good, thanks!", isUser: false),
        Message(text: "Hello!", isUser: false),
        Message(text: "Hi, how are you?", isUser: true),
        Message(text: "I'm good, thanks!", isUser: false),
        Message(text: "Hello!", isUser: false),
        Message(text: "Hi, how are you?", isUser: true),
        Message(text: "I'm good, thanks!", isUser: false),
    ]
    @State private var newMessage: String = ""
    @State private var isShowingView = true
    @State private var selectedMessage: Message?
    @State private var isShowingMessage = false

    
    @Namespace var namespace
    
    var body: some View {
        VStack {
            ZStack {
                if isShowingView {
                    ScrollView {
                        VStack(spacing: 10) {
                            ForEach(messages) { message in
                                HStack {
                                    if message.isUser {
                                        Spacer()
                                    }
                                    Text(message.text)
                                        .padding()
                                        .background(message.isUser ? Color.second : Color.select)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .matchedGeometryEffect(id: message.id, in: namespace)
                                        .onTapGesture {
                                            selectedMessage = message
                                            
                                            withAnimation {
                                                
                                                    isShowingView.toggle()
                                                
                                            }
                                        }
                                    if !message.isUser {
                                        Spacer()
                                    }
                                }
                                .padding(.horizontal)
                            }
                        }
                    }
                } else {
                    if let selectedMessage = selectedMessage {
                        VStack {
                            HStack {
                                Spacer()
                                Button {
                                    withAnimation {
                                            isShowingView.toggle()
                                    }
                                } label: {
                                    Image(systemName: "xmark")
                                        .resizable()
                                        .frame(width: 32, height: 32)
                                        .foregroundColor(selectedMessage.isUser ? .select : .second)
                                        .padding()
                                        
                                }

                            }
                            Text(selectedMessage.text)
                                .padding()
                                .foregroundColor(.white)
                                .font(.title)
                                
                                .cornerRadius(10)
                                
                                .frame(width: 350)
                             
                            
                            Spacer()
                        }
                        .background(selectedMessage.isUser ?  Color.second : Color.select)
                        .cornerRadius(10)
                        .padding()
                        .padding(.bottom, 100)
                        .matchedGeometryEffect(id: selectedMessage.id, in: namespace)
                        
                    }
                }
            }
        }
    }
    
    func sendMessage() {
        let message = Message(text: newMessage, isUser: true)
        messages.append(message)
        newMessage = ""
    }
}

#Preview {
    ChatView()
}

//import SwiftUI
//
//struct Message: Identifiable, Hashable {
//    let id = UUID()
//    let text: String
//    let isUser: Bool
//}
//
//struct ChatView: View {
//    @State private var messages: [Message] = [
//        Message(text: "Hello!", isUser: false),
//        Message(text: "Hi, how are you?", isUser: true),
//        Message(text: "I'm good, thanks!", isUser: false)
//    ]
//    @State private var newMessage: String = ""
//    @State private var isShowingView = true
//    @State private var someText = ""
//    @Namespace var  namespase
//    var body: some View {
//        VStack {
//            ZStack {
//                if isShowingView {
//                    ScrollView {
//                        VStack(spacing: 10) {
//                            ForEach(messages) { message in
//                                HStack {
//                                    if message.isUser {
//                                        Spacer()
//                                    }
//                                    Text(message.text)
//                                        .matchedGeometryEffect(id: message, in: namespase)
//                                        .padding()
//                                        .background(message.isUser ? Color.select : Color.second)
//                                        .foregroundColor(.white)
//                                        .cornerRadius(10)
//                                                                            .onTapGesture {
//                                            someText = message.text
//                                            withAnimation{
//                                                isShowingView.toggle()
//
//                                            }
//                                        }
//                                    if !message.isUser {
//                                        Spacer()
//                                    }
//                                }
//                                .padding(.horizontal)
//                            }
//                        }
//                    }
//
//                } else {
//                    VStack {
//                        Text(someText)
//                           
//                            .foregroundColor(.red)
//                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                        
//                        Spacer()
//                    }
//                    .matchedGeometryEffect(id: someText, in: namespase)
//                    .frame(width: 350)
//                    .background(Color.gray.opacity(0.3))
//                    .cornerRadius(10)
//                    .padding()
//                    .onTapGesture {
//                        withAnimation{
//                            isShowingView.toggle()
//
//                        }
//                    }
//                }
//            }
//           
//        }
//    }
//    
//    func sendMessage() {
//        let message = Message(text: newMessage, isUser: true)
//        messages.append(message)
//        newMessage = ""
//    }
//}
//
//
//#Preview {
//    ChatView()
//}
