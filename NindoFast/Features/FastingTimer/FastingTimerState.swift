import Foundation

enum FastingTimerState: Equatable {
    case idle
    case running(FastingSession)
    case completed(FastingSession)
}
