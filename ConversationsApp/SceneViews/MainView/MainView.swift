//
//  FirstView.swift
//  ConversationsApp
//
//  Created by apple on 08.06.2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel(dummyStoreManager: DummyStoreManager.shared)
    @State private var isPeopleViewFullScreen = false

    var body: some View {
        NavigationStack {
            VStack {
                PeopleView()
                    .environmentObject(viewModel)
                
                TagSubTitleView(isOpen: $isPeopleViewFullScreen, toggleFullScreen: {
                    isPeopleViewFullScreen = true
                }, titles: viewModel.tags)
                ConversationView()
                    .environmentObject(viewModel)
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Shared")
            .fullScreenCover(isPresented: $isPeopleViewFullScreen) {
                SearchView(isPresented: $isPeopleViewFullScreen)
                    .environmentObject(viewModel)
            }
        }
    }
}

#Preview {
    MainView()
}



