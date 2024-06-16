//
//  TagSubTitleView.swift
//  ConversationsApp
//
//  Created by apple on 08.06.2024.
//

import SwiftUI

struct TagSubTitleView: View {
    @Binding var isOpen: Bool
    var toggleFullScreen: () -> Void

    @State var titles: [String] = []
    var body: some View {
        VStack {
                HStack {
                    VStack{
                        Text("#Tags")
                            .font(.title)
                        Text("contraction")
                    }
                        VStack {
                            Text(titles.joined(separator: " "))
                                .font(.subheadline)
                    }
                 
                    Spacer()
                    
                    Image(systemName: isOpen ? "xmark" : "magnifyingglass.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .animation(.easeInOut, value: isOpen)

                        .onTapGesture { [self] in
                            self.isOpen = true
                            toggleFullScreen()
                        }
                                }
                .padding()
                .background(.headerBg.opacity(0.2))

            Divider()
        }
    }
}


