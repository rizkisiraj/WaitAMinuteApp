//
//  DecisionListView.swift
//  WaitAMinute
//
//  Created by Rizki Siraj on 16/03/26.
//

import SwiftUI

enum DisplayedDecision {
    case active
    case inactive
}

struct DecisionListView: View {
    @State private var displayedDecision: DisplayedDecision = .active
    
    let columns = [
        GridItem(.flexible(minimum: 40), spacing: 8),
        GridItem(.flexible(minimum: 40), spacing: 8),
    ]
    
    var body: some View {
        ScrollView {
            Text("delayed decisions.")
                .font(.title)
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .padding(.top)

            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(1...10, id: \.self) { value in
                    NavigationLink(destination: DecisionDetailView()) {
                        DecisionCard()
                    }
                    
                }
            }
            .padding(.horizontal, 8)
        }
        .padding(.horizontal, 8)
        .background(.screenBackground)
        .scrollIndicators(.hidden)
    }
}

#Preview {
    DecisionListView()
}
