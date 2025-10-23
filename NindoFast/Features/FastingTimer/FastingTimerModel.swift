import Foundation
import SwiftData

@Model
final class FastingSession {
    @Attribute(.unique) var id: UUID
    var startDate: Date
    var endDate: Date?
    
    init(id: UUID = UUID(), startDate: Date, endDate: Date? = nil) {
        self.id = id
        self.startDate = startDate
        self.endDate = endDate
    }
}
