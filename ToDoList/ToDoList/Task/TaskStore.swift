import Foundation
import Combine

class TaskStore: ObservableObject {
    @Published var tasks: [Task] = []

    init() {
        loadTasks()
    }

    func add(_ task: Task) {
        tasks.append(task)
        saveTasks()
    }

    func update(_ task: Task) {
        guard let index = tasks.firstIndex(where: { $0.id == task.id }) else { return }
        tasks[index] = task
        saveTasks()
    }

    func delete(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
        saveTasks()
    }

    // Stub function for loading tasks
    private func loadTasks() {
        // TODO: implement loading from persistence (e.g., JSON file, UserDefaults)
    }

    // Stub function for saving tasks
    private func saveTasks() {
        // TODO: implement saving to persistence (e.g., JSON file, UserDefaults)
    }
}
