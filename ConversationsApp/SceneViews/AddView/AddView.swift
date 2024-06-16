//
//  SecondView.swift
//  ConversationsApp
//
//  Created by apple on 08.06.2024.
//

import SwiftUI

struct AddView: View {
    @StateObject var viewModel = AddViewViewModel(dummyStoreManager: DummyStoreManager.shared)
    var body: some View {
        NavigationStack {
            
            ZStack(alignment: .bottomTrailing){
                MyConversationView()
                    .environmentObject(viewModel)
                NavigationLink {
                    AddConversationView()
                } label: {
                    ZStack {
                        
                        Circle()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                            .tint(.secondColor)
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 60, height: 60)
                    }
                   

                }

                
                .padding(.trailing, 40 )
                .padding(.bottom, 40 )

                
                
            }
                .navigationTitle(Text("Add "))
                .navigationBarTitleDisplayMode(.inline)

        }
    }
}

#Preview {
    AddView()
}
