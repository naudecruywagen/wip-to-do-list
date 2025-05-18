import Foundation

struct Task: Identifiable, Codable {
    let id: UUID
    var title: String
    var isCompleted: Bool
    var dueDate: Date?
    var priority: Priority?

    enum Priority: String, Codable, CaseIterable {
        case low
        case medium
        case high
    }

    init(id: UUID = UUID(), title: String, isCompleted: Bool = false, dueDate: Date? = nil, priority: Priority? = nil) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.priority = priority
    }
}
