//
//  MainView.swift
//  Composite
//
//  Created by Denis Kazarin on 19.10.2021.
//
import SwiftUI

struct MainView: View {
    @StateObject var myTaskTree = Task(name: "Список задач (TODO):", parent: nil)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(myTaskTree.children) { child in
                    TasksListView(task: child)
                }
            }
            .listStyle(.plain)
            .navigationBarTitle(myTaskTree.name).padding()
            .toolbar {
                ToolbarButtonView(task: myTaskTree)
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().preferredColorScheme(.dark)
    }
}

