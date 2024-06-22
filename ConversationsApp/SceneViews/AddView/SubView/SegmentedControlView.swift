//
//  SegmentedControlView.swift
//  ConversationsApp
//
//  Created by apple on 11.06.2024.
//

import SwiftUI

enum Segment: String, CaseIterable, Identifiable {
    case first = "AI"
    case second = "Manual"
    var id: String { self.rawValue }
}

struct SegmentedControlView: View {
    @Binding var isAiView: Bool
    @State private var selectedSegment: Segment = .first

    var body: some View {
        VStack {
            Picker("Choose a segment", selection: $selectedSegment) {
                ForEach(Segment.allCases) { segment in
                    Text(segment.rawValue).tag(segment)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            .onChange(of: selectedSegment) { newSegment in
                isAiView = selectedSegment == .first ? true : false
                segmentChanged(to: newSegment)
            }

            
        }
    }

    func segmentChanged(to newSegment: Segment) {
        print("Segment changed to: \(newSegment.rawValue)")
        // Add any additional actions you want to perform when the segment changes
    }
}

#Preview {
    SegmentedControlView(isAiView: .constant(true))
}
