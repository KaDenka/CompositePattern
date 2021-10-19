//
//  CompositePattern.swift
//  Composite
//
//  Created by Denis Kazarin on 19.10.2021.
//

import Foundation
import SwiftUI

protocol CompositePattern {
    var parent: CompositePattern? { get }
    var children: [Task] { get set }
    var name: String { get }
    
    func add(child: Task)
}

class Task: CompositePattern, Identifiable, ObservableObject {
    var parent: CompositePattern?
    @Published var children: [Task] = []
    var name: String
    
    init(name: String, parent: CompositePattern?) {
        self.name = name
        self.parent = parent
    }
    
    func add(child: Task) {
        children.append(child)
    }
}

let previewTask = Task(name: "For preview purpose only", parent: nil)
