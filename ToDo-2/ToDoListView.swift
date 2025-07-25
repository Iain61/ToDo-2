//
//  ToDoListView.swift
//  ToDo-2
//
//  Created by Iain Studio on 25/7/2025.
//

import SwiftUI

struct ToDoListView: View {
    var toDos = ["Learn Swift",
                 "Change the World",
                 "Bring the Awesome",
                 "Take a Nap"]
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self, content: { toDo in
                    NavigationLink {
                        DetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
                    }
                    
                })
                .listStyle(.plain)
                //            VStack {
                //                NavigationLink {
                //                    DetailView()
                //                } label: {
                //                    Image(systemName: "eye")
                //                    Text("Go to the new world!")
                //                }
                //                .buttonStyle(.borderedProminent)
                //            }
                .navigationTitle("To Do List")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    ToDoListView()
}
