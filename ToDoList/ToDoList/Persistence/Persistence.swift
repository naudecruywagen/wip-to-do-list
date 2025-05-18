import Foundation

class Persistence {
    static func load<T: Codable>(_ type: T.Type, from filename: String) -> T? {
        // TODO: implement loading logic (e.g., FileManager, JSONDecoder)
        return nil
    }

    static func save<T: Codable>(_ object: T, to filename: String) {
        // TODO: implement saving logic (e.g., FileManager, JSONEncoder)
    }
}
