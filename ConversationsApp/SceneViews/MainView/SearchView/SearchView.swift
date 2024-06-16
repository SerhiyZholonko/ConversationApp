//
//  SearchView.swift
//  ConversationsApp
//
//  Created by apple on 09.06.2024.
//

import SwiftUI


struct SearchView: View {
    @EnvironmentObject var viewModel: MainViewViewModel
    @Binding var isPresented: Bool

    var body: some View {
        VStack {
            TagSubTitleView(isOpen: $isPresented, toggleFullScreen: {
                isPresented = false
            })
            CustomSearchTextField(searchText: viewModel.$searchText)
            ConversationView()
                .environmentObject(viewModel)
        }
    }
}
#Preview {
    SearchView( isPresented: .constant(true))
        .environmentObject(MainViewViewModel(dummyStoreManager: DummyStoreManager()))
}
