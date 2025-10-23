import Foundation

protocol FastingTimerServiceProtocol {
    func startSession() -> FastingSession
    func stopSession(_ session: FastingSession) -> FastingSession
}

final class FastingTimerService: FastingTimerServiceProtocol {
    func startSession() -> FastingSession {
        .init(id: UUID(), startDate: Date(), endDate: nil)
    }
    
    func stopSession(_ session: FastingSession) -> FastingSession {
        let updated = session
        updated.endDate = Date()
        return updated
    }
}
