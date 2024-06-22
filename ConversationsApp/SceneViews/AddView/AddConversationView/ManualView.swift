//
//  ManualView.swift
//  ConversationsApp
//
//  Created by apple on 16.06.2024.
//

import SwiftUI

struct ManualView: View {
    @State var text: String = ""
    @Binding var selectionLanguage1: String?
    @Binding var selectionLanguage2: String?
    
    var body: some View {
        ZStack {
            VStack {
               
                LangvichView(selectionLanguage1: $selectionLanguage1, selectionLanguage2: $selectionLanguage2)
                
                ChatView()
                Spacer()
                
            }
            
            EnteringTextView(text: $text)

        }
      
    }
}
#Preview {
    ManualView(selectionLanguage1: .constant("English 🇬🇧"), selectionLanguage2: .constant("Ukraine 🇺🇦") )
}





