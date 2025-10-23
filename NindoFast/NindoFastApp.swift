import SwiftUI
import SwiftData

@main
struct NindoFastApp: App {
    @StateObject private var fastingTimerViewModel = FastingTimerBuilder.build()
    
    var sharedModelContainer: ModelContainer = {
        do {
            let schema = Schema([FastingSession.self])
            let configuration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
            return try ModelContainer(for: schema, configurations: [configuration])
        } catch {
            fatalError("Failed to create SwiftData ModelContainer: \(error)")
        }
    }()
    
    var body: some Scene {
        WindowGroup {
            FastingTimerView()
                .environmentObject(fastingTimerViewModel)
        }
        .modelContainer(sharedModelContainer)
    }
}
