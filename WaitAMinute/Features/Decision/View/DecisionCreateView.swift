//
//  DecisionCreateView.swift
//  WaitAMinute
//
//  Created by Rizki Siraj on 17/03/26.
//

import SwiftUI

struct DecisionCreateView: View {
    @State private var textInput: String = ""

    var body: some View {
        VStack {
            
            Spacer()
            
            ZStack {
                TextField("What are you unsure about?", text: $textInput)
                    .textFieldStyle(.plain)
                    .font(.title2)
                    .fontDesign(.rounded)

            }
            .padding()
            .background(.cardBackground)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal)

            ZStack {
                TextField("Add more details (optional)", text: $textInput)
                    .textFieldStyle(.plain)
                    .font(.title2)
                    .fontDesign(.rounded)

            }
            .padding()
            .background(.cardBackground)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal)

            ZStack(alignment: .topLeading) {

                TextEditor(text: $textInput)
                    .font(.title3)
                    .scrollContentBackground(.hidden)
                    .background(.clear)
                    .frame(minHeight: 100, maxHeight: 200)
                    .padding(.horizontal, 10)

                if textInput.isEmpty {
                    Text("How are you feeling right now?")
                        .font(.title3)
                        .fontDesign(.rounded)
                        .foregroundStyle(.secondary.opacity(0.6))
                        .padding(.top, 8)
                        .padding(.leading)
                }
            }
            .padding(.vertical)
            .background(.cardBackground)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal)
            
            Spacer()

        }
        .background(.screenBackground)
        .toolbar {
            ToolbarItem(placement: .bottomBar) {
                Button {
                    
                } label: {
                    Text("Done")
                        .font(.title2)
                        .padding(8)
                }
                .buttonStyle(.borderedProminent)
                .tint(.indigo)
            }
        }
    }
}

#Preview {
    NavigationStack {
        DecisionCreateView()
    }
    
}
