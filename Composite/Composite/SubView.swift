//
//  SubView.swift
//  Composite
//
//  Created by Denis Kazarin on 19.10.2021.
//
import SwiftUI

struct SubView: View {
    @StateObject var task: Task
    
    var body: some View {
        List {
            ForEach(task.children) { child in
                TasksListView(task: child)
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Папка: " + task.name).padding()
        .toolbar {
            ToolbarButtonView(task: task)
        }
    }
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        SubView(task: previewTask).preferredColorScheme(.dark)
    }
}
