//
//  DropDownView.swift
//  ConversationsApp
//
//  Created by apple on 15.06.2024.
//

import SwiftUI


struct DropDownView: View {
    var hint: String
    var options: [String]
    var anchor: Anchor = .bottom
    var maxWidth: CGFloat = 250
    var cornerRadius: CGFloat = 15
    var font: Font = .title3
    @Binding var selection: String?
    @State private var showOptions: Bool = false
    @Environment(\.colorScheme) private var scheme
    var body: some View {
        GeometryReader { let size = $0.size
            VStack(spacing: 0){
                HStack(spacing: 0) {
                    Text (selection ?? hint)
                        .font(.caption)
                        .foregroundStyle(selection == nil ? .gray : .primary)
                        .lineLimit(1)
                    Spacer(minLength: 0)
                    Image (systemName: "chevron.down")
                        .font(. title3)
                        .foregroundStyle(.select)
                        .rotationEffect(.init(degrees: showOptions ? -180 : 0))
                }
                .padding(.horizontal, 15)
                .frame(width: size.width, height: size.height)
                .contentShape(.rect)
                .onTapGesture {
                        showOptions.toggle()
                }
                if showOptions {
                    OptionsView()
                }
            }
            .clipped()
            .background((scheme == .dark ? Color.black : Color.white).shadow(.drop(color: .select.opacity(0.15), radius: 4)), in: .rect(cornerRadius: cornerRadius))
        }
        .frame (width: maxWidth, height: 50)
    }
    
    @ViewBuilder
    func OptionsView() -> some View {
        VStack(spacing: 10) {
            ForEach(options, id: \.self) { option in
                HStack(spacing: 0) {
                    Text(option)
                        .lineLimit(1)
                    Spacer(minLength: 0)
                    Image(systemName: "checkmark")
                        .opacity (selection == option ? 1 : 0)
                }
                .foregroundStyle(selection == option ? Color.primary: Color.gray)
                .animation(.none, value: selection)
                .frame(height: 40)
                .contentShape(.rect)
                .onTapGesture {
                        selection = option
                        showOptions = false
                }
            }
        }
        .padding(.horizontal)
        .transition(.move(edge: .top))
    }
}

#Preview {
    DropDownView(
        hint: "elementary A1", options: [
            "elementary A1",
            "elementary A2",
            "intermediate B1",
            "intermediate B2",
            "advanced C1"],
        selection: .constant("elementary A1"))

}
