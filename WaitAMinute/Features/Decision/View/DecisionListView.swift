//
//  DecisionListView.swift
//  WaitAMinute
//
//  Created by Rizki Siraj on 16/03/26.
//

import SwiftUI

struct DecisionListView: View {
    let columns = [
        GridItem(.flexible(minimum: 40), spacing: 8),
        GridItem(.flexible(minimum: 40), spacing: 8),
    ]
    
    var body: some View {
        ScrollView {
            Text("delayed decision")
                .font(.title)
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .padding(.top)

            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(1...10, id: \.self) { value in
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.blue)
                        VStack(spacing: 16) {
                            Text("6 days left")
                                .font(.title3)
                                .fontWeight(.bold)
                            Text("Accept Pekerjaan")
                                .font(.subheadline)
                            
                            Circle()
                                .frame(width: 70, height: 70)
                        }
                        .padding(.vertical, 48)
                    }
                }
            }
            .padding(.horizontal, 8)
        }
        .padding(.horizontal, 8)
    }
}

#Preview {
    DecisionListView()
}
