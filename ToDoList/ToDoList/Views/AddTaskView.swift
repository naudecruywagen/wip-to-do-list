import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var store: TaskStore
    @Binding var isPresented: Bool

    @State private var title: String = ""
    @State private var dueDate: Date = Date()
    @State private var priority: Task.Priority = .medium
    @State private var includeDueDate: Bool = false
    @State private var includePriority: Bool = false

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Task")) {
                    TextField("Title", text: $title)
                }
                Section {
                    Toggle("Include due date", isOn: $includeDueDate)
                    if includeDueDate {
                        DatePicker("Due date", selection: $dueDate, displayedComponents: .date)
                    }
                }
                Section {
                    Toggle("Include priority", isOn: $includePriority)
                    if includePriority {
                        Picker("Priority", selection: $priority) {
                            ForEach(Task.Priority.allCases, id: \.self) { pr in
                                Text(pr.rawValue.capitalized).tag(pr)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                }
            }
            .navigationTitle("New Task")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Add") {
                        let newTask = Task(
                            title: title,
                            dueDate: includeDueDate ? dueDate : nil,
                            priority: includePriority ? priority : nil
                        )
                        store.add(newTask)
                        isPresented = false
                    }
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        isPresented = false
                    }
                }
            }
        }
    }
}
