//
//  DecisionCard.swift
//  WaitAMinute
//
//  Created by Rizki Siraj on 17/03/26.
//

import SwiftUI

struct DecisionCard: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.cardBackground)
            VStack {
                Text("6 days left")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.bottom, 2)
                Text("Accept Pekerjaan")
                    .font(.subheadline)

//                ZStack {
//                    Circle()
//                        .frame(width: 70, height: 70)
//                        .foregroundStyle(.orange.opacity(0.2))
//                    Image(systemName: "airplane")
//                        .resizable()
//                        .frame(width: 30, height: 30)
//                        .foregroundStyle(.orange)
//                }
            }
            .padding(.vertical, 48)
        }
    }
}
