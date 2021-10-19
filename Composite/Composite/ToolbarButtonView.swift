//
//  ToolbarButtonView.swift
//  Composite
//
//  Created by Denis Kazarin on 19.10.2021.
//
import SwiftUI

struct ToolbarButtonView: View {
    @ObservedObject var task: Task
    
    var body: some View {
        Button("Добавление задания") {
            textAlert() { userInput in
                guard userInput != "" else { return }
                task.add(child: Task(name: userInput, parent: task))
            }
        }
    }
}

struct ToolbarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarButtonView(task: previewTask)
    }
}
