//
//  AddConversationView.swift
//  ConversationsApp
//
//  Created by apple on 11.06.2024.
//

import SwiftUI

struct AddConversationView: View {
    @State private var selectionLevel: String?
    @State private var selection: String?
    @State var titleText: String = ""
    @State var tagText: String = ""
    @EnvironmentObject var viewModel: AddViewViewModel
    @State var isAiView: Bool = true
    @State private var selectedSegment: Int = 1
    
    var body: some View {
      
            VStack {
                SegmentedControlView(isAiView: $isAiView)
                if isAiView {
                    withAnimation {
                        ScrollView {
                            
                            AIView(selectionLevel: $selectionLevel, selection: $selection, titleText: $titleText, tagText: $tagText)
                        }
                    }
                }
                else {
                    withAnimation {
                       
                        ManualView(selectionLanguage1: .constant("English 🇬🇧"), selectionLanguage2: .constant("Ukraine 🇺🇦") )
                        
                       
                    }
                
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        
        
    }
}

#Preview {
    AddConversationView()
}








