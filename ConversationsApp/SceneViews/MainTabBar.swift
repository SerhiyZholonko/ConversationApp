//
//  MainTabBar.swift
//  ConversationsApp
//
//  Created by apple on 08.06.2024.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        TabView {
               MainView()
                   .tabItem {
                       Image(systemName: "message")
                       Text("Share")
                   }
               
               AddView()
                   .tabItem {
                       Image(systemName: "plus.message.fill")
                       Text("Add")
                   }
               
               ThirdView()
                   .tabItem {
                       Image(systemName: "person.2.wave.2")
                       Text("Online")
                   }
            FourthView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                    
                }
           }
        .accentColor(.selectColor)

        
    }
}

#Preview {
    MainTabBar()
}
