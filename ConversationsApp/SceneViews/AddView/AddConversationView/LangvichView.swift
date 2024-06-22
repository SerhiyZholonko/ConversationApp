//
//  LangvichView.swift
//  ConversationsApp
//
//  Created by apple on 22.06.2024.
//

import SwiftUI

struct LangvichView: View {
    @Binding var selectionLanguage1: String?
    @Binding var selectionLanguage2: String?
    var body: some View {
        HStack {
            
            DropDownView(
                hint: "English 🇬🇧", options: [
                    "English 🇬🇧", "Ukraine 🇺🇦"],
                maxWidth: 150, selection: $selectionLanguage1)
            Image(systemName: "arrow.left.arrow.right.square.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.select)
            DropDownView(
                hint: "Ukraine 🇺🇦", options: [
                    "English 🇬🇧", "Ukraine 🇺🇦"],
                maxWidth: 150, selection: $selectionLanguage2)
            
        }
        .padding(.vertical)
        .zIndex(2)
    }
}
