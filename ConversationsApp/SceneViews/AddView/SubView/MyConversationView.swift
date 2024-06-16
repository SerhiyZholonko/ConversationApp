//
//  MyConversationView.swift
//  ConversationsApp
//
//  Created by apple on 10.06.2024.
//

import SwiftUI

struct MyConversationView: View {
    @EnvironmentObject var viewModel: AddViewViewModel
    let columns = [
            GridItem(.fixed(120)),
            GridItem(.fixed(120)),
            GridItem(.fixed(120))
        ]
    let circleSize: CGFloat = 100

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(viewModel.myConversations) { conversation in
                            ZStack (alignment: .bottomTrailing){
                                ZStack {
                                    Rectangle()
                                        .fill(Color.secondColor)
                                        .frame(width: circleSize, height: circleSize)
                                        .cornerRadius(5)
                                    Image(uiImage: UIImage(named: conversation.imageName)!)
                                        .resizable()
                                        .frame(width: 70, height: 70)
                                }
                                
                                ZStack {
                                    Rectangle()
                                        .fill(Color.selectColor)
                                        .frame(width: 24, height: 24)
                                        .cornerRadius(5)
                                    Image(systemName: "pencil")
                                }
                                

                            }
                            
                        }
                    }
                    .padding()
        }
        
    }
}

//#Preview {
//    SwiftUIView()
//}
