import Foundation

struct FastingTimerBuilder {
    static func build() -> FastingTimerViewModel {
        let service = FastingTimerService()
        let repository = FastingTimerRepository()
        return FastingTimerViewModel(service: service, repository: repository)
    }
}
