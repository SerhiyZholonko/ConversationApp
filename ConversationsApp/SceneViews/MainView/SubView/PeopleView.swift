//
//  PeopleView.swift
//  ConversationsApp
//
//  Created by apple on 08.06.2024.
//

import SwiftUI

struct PeopleView: View {
    @EnvironmentObject var viewModel: MainViewViewModel
    let circleSize: CGFloat = 70
    let imageSize: CGFloat = 50

    var body: some View {
        VStack {
            SubtitleView(title: "Last conversations")
            ScrollView(.horizontal) {
                HStack {
                    ForEach(viewModel.friends) { conversation in
                        ZStack(alignment: .bottomTrailing) {
                            ZStack {
                                Circle()
                                    .foregroundColor(.secondColor)
                                    .frame(width: circleSize, height: circleSize)
                                Image(systemName: "person")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                            }
                            
                            
                            ZStack {
                                Circle()
                                    .foregroundColor(.selectColor)
                                    .frame(width: 18, height: 18)
                                Image(systemName: "plus")
                            }
                        }
                    }
                    ZStack {
                        Circle()
                            .foregroundColor(.selectColor)
                            .frame(width: circleSize, height: circleSize)
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: imageSize, height: imageSize)
                    }
                    .onTapGesture {
                        print("Touch..")
                    }
                    
                    Spacer()
                }
                .padding()
            }
            Divider()
        }
    }
}
