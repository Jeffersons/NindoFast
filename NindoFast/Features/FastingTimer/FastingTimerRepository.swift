import Foundation

protocol FastingTimerRepositoryProtocol {
    func save(_ session: FastingSession)
    func loadAll() -> [FastingSession]
}

final class FastingTimerRepository: FastingTimerRepositoryProtocol {
    private var sessions: [FastingSession] = []
    
    func save(_ session: FastingSession) {
        sessions.append(session)
    }
    
    func loadAll() -> [FastingSession] {
        sessions
    }
}
