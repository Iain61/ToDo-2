//
//  DetailView.swift
//  ToDo-2
//
//  Created by Iain Studio on 25/7/2025.
//

import SwiftUI

struct DetailView: View {
    var passedValue: String
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You passed in:\n\(passedValue)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Get Back!") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
//        .navigationBarBackButtonHidden(true)
        
        
    }
}

#Preview {
    DetailView(passedValue: "String-55")
}
