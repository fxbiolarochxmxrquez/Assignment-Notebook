//
//  AssignmentList.swift
//  Assignment Notebook
//
//  Created by Fabiola Rocha Marquez on 2/7/24.
//

import Foundation

class AssignmentList: ObservableObject {
    @Published var items =  [AssignmentItem(course: "Math", description: "Day #50", dueDate: Date()),
                             AssignmentItem(course: "Mobile Apps", description: "assignment notebook", dueDate: Date()),
                             AssignmentItem(course: "Accounting", description: "Chapter homework", dueDate: Date()),
                             AssignmentItem(course: "English", description: "POTW", dueDate: Date()),
                             AssignmentItem(course: "Psychology", description: "AP Classroom", dueDate: Date()),
                             AssignmentItem(course: "Human Geography", description: "Key Issue 8.1", dueDate: Date()),
                             AssignmentItem(course: "Physics", description: "Mastering Physics", dueDate: Date())]
}
