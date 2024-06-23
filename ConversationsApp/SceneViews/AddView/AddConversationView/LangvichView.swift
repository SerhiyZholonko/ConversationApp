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
    @State var isShow: Bool = false
    @State var isSelect: Bool = false
    var body: some View {
        if isShow {
            HStack {
                if isSelect {
                    Image(systemName: "checkmark.square.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.select)
                        .onTapGesture {
                            withAnimation {
                                isSelect.toggle()
                            }
                        }
                } else {
                    Image(systemName: "checkmark.square")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.select)
                        .onTapGesture {
                            withAnimation {
                                isSelect.toggle()
                            }
                        }
                }
                
                DropDownView(
                    hint: "English 🇬🇧", options: [
                        "English 🇬🇧", "Ukraine 🇺🇦"], maxWidth: 120, font: .caption, selection: $selectionLanguage1)
                
                VStack {
                    Image(systemName: "arrow.left.arrow.right.square.fill")
                        .resizable()
                        .frame(width: 30, height: 25)
                        .foregroundColor(.select)
                    Image(systemName: "chevron.up.square.fill")
                        .resizable()
                        .frame(width: 30, height: 25)
                        .foregroundColor(.select)
                        .onTapGesture {
                            withAnimation{
                                isShow.toggle()
                            }
                        }
                }
                
                DropDownView(
                    hint: "Ukraine 🇺🇦", options: [
                        "English 🇬🇧", "Ukraine 🇺🇦"],
                    maxWidth: 120, selection: $selectionLanguage2)
                
            }
            .padding(.vertical)
            .zIndex(2)
        } else {
            HStack {
                let image = UIImage(named: "translate")
                Image(uiImage: image!)
                    .resizable()
                    .frame(width: 30, height: 25)
                    .foregroundColor(.select)
                    .offset(x: 20)
                    .onTapGesture {
                        withAnimation{
                            isShow.toggle()
                        }
                    }
                
                Image(systemName: "chevron.down.square.fill")
                    .resizable()
                    .frame(width: 30, height: 25)
                    .foregroundColor(.select)
                    .offset(x: 20)
                    .onTapGesture {
                        withAnimation{
                            isShow.toggle()
                        }
                    }
Spacer()
            }
        }
       
    }
}

#Preview {
    LangvichView(selectionLanguage1: .constant("Ukraine 🇺🇦"), selectionLanguage2: .constant("English 🇬🇧"))
}
