import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: TaskStore
    @State private var showingAddTask = false

    var body: some View {
        NavigationView {
            List {
                ForEach(store.tasks) { task in
                    HStack {
                        Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                            .onTapGesture { toggleCompletion(task) }
                        VStack(alignment: .leading) {
                            Text(task.title)
                                .strikethrough(task.isCompleted)
                            if let due = task.dueDate {
                                Text(due, style: .date)
                                    .font(.caption)
                            }
                        }
                        Spacer()
                        if let priority = task.priority {
                            Text(priority.rawValue.capitalized)
                                .font(.caption)
                                .padding(4)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(4)
                        }
                    }
                }
            }
            .navigationTitle("To-Do List")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { showingAddTask = true }) {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showingAddTask) {
                AddTaskView(isPresented: $showingAddTask)
                    .environmentObject(store)
            }
        }
    }

    private func toggleCompletion(_ task: Task) {
        var updated = task
        updated.isCompleted.toggle()
        store.update(updated)
    }
}

#Preview {
    ContentView()
        .environmentObject(TaskStore())
}
