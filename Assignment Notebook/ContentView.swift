//
//  ContentView.swift
//  Assignment Notebook
//
//  Created by Fabiola Rocha Marquez on 1/29/24.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var assignmentList = AssignmentList()
    @State private var showingAddAssignmentView = false
    var body: some View {
        NavigationView {
            List {
                ForEach(assignmentList.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.course)
                                .font(.headline)
                            Text(item.description)
                        }
                        Spacer()
                        Text(item.dueDate, style: .date)
                    }
                }
                .onMove { indices, newOffset in
                    assignmentList.items.move(fromOffsets: indices, toOffset: newOffset)
                }
                .onDelete { indexSet in
                    assignmentList.items.remove(atOffsets: indexSet)
                }
            }
            .sheet(isPresented: $showingAddAssignmentView, content: {
                AddAssignmentView(assignmentList: assignmentList)
            })
            .navigationBarTitle("Assignment Notebook")
            .navigationBarItems(leading: EditButton(), trailing: Button(action: {
                showingAddAssignmentView = true }) {
                    Image(systemName: "plus")
            })
            .background(Gradient(colors: [.red, .pink, .white]).opacity(0.6))
        }
    }
}

#Preview {
    ContentView()
}

struct AssignmentItem: Identifiable, Codable {
    var id = UUID()
    var course = String()
    var description = String()
    var dueDate = Date()
}
