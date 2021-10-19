//
//  TasksListView.swift
//  Composite
//
//  Created by Denis Kazarin on 19.10.2021.
//
import SwiftUI

struct TasksListView: View {
    @ObservedObject var task: Task
    
    var body: some View {
        NavigationLink(destination: SubView(task: task)) {
            VStack(alignment: .leading) {
                Text(task.name).font(.title)
                Text("Дополнительных заданий: \(task.children.count)").foregroundColor(.secondary)
            }.padding()
        }
    }
}

struct TasksListView_Previews: PreviewProvider {
    static var previews: some View {
        TasksListView(task: previewTask).preferredColorScheme(.dark)
    }
}
