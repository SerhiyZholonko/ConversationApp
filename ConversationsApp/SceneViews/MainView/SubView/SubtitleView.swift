//
//  SubtitleView.swift
//  ConversationsApp
//
//  Created by apple on 08.06.2024.
//

import SwiftUI

struct SubtitleView: View {
    @State var title: String = ""
    var body: some View {
        VStack {
            Divider()
            HStack {
                Text(title)
                    .font(.subheadline)
                    .padding()
                Spacer()
            }
            .background(.headerBg.opacity(0.2))
            Divider()
        }
    }
}

#Preview {
    SubtitleView(title: "Title")
}
