//
//  DecisionDetailView.swift
//  WaitAMinute
//
//  Created by Rizki Siraj on 17/03/26.
//
import SwiftUI

struct DecisionDetailView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("masak nasi goreng.")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top, 8)
                            .fontDesign(.rounded)
                            .multilineTextAlignment(.leading)

                        Text(
                            "Aku bingung aku mau masak nasi goreng atau belum nanti"
                        )
                        .multilineTextAlignment(.leading)
                        .padding(.top, 2)
                        .padding(.bottom, 8)
                    }
                    Spacer()
                }

                VStack {
                    HStack {
                        Text("state of minds.")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.bottom, 8)
                        Spacer()
                    }

                    VStack {
                        Text("18 Dec 2026")
                            .foregroundStyle(.secondary)
                            .font(.callout)
                            .padding(.bottom, 2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(
                            "Hari ini saya mengira saya harusnya makan nasi di pagi hari. Seharusnya saya gak makan nasi di pagi hari itu orang saya gak lapar-lapar banget."
                        )
                        .multilineTextAlignment(.leading)
                    }

                }

            }
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
        }
        .background(.cardBackground)
        .toolbar {
            ToolbarItemGroup(placement: .bottomBar) {
                Button {
                    print("Second tapped")
                } label: {
                    Text("add state of mind")
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(4)
                }
                .buttonStyle(.borderedProminent)
                .tint(.indigo)
                Button {
                    print("Second tapped")
                } label: {
                    Text("decide now")
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(4)
                }
                .buttonStyle(.borderedProminent)
                .tint(.indigo)
            }
        }
    }
}

#Preview {
    NavigationStack {
        DecisionDetailView()
    }

}
