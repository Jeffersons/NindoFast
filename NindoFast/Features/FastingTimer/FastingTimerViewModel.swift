import SwiftUI
internal import Combine

@MainActor
final class FastingTimerViewModel: ObservableObject {
    @Published var state: FastingTimerState = .idle
    
    private let service: FastingTimerServiceProtocol
    private let repository: FastingTimerRepositoryProtocol
    
    init(service: FastingTimerServiceProtocol, repository: FastingTimerRepositoryProtocol) {
        self.service = service
        self.repository = repository
    }
    
    func startFasting() {
        let session = service.startSession()
        repository.save(session)
        state = .running(session)
    }
    
    func stopFasting() {
        guard case .running(let session) = state else { return }
        let stopped = service.stopSession(session)
        repository.save(stopped)
        state = .completed(stopped)
    }
    
    func reset() {
        state = .idle
    }
}
