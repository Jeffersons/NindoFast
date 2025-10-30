import SwiftUI

struct FastingTimerView: View {
    @StateObject private var viewModel = FastingTimerBuilder.build()
    
    var body: some View {
        VStack(spacing: 32) {
            Text(title)
                .font(.largeTitle)
            
            switch viewModel.state {
            case .idle:
                Button("Start Fasting") {
                    viewModel.startFasting()
                }
                .buttonStyle(.borderedProminent)
                .glassEffect(.regular.interactive(), in: .rect(cornerRadius: 20))
                
            case .running:
                Button("Stop Fasting") {
                    viewModel.stopFasting()
                }
                .buttonStyle(.borderedProminent)
                .glassEffect(.regular.interactive(), in: .rect(cornerRadius: 20))
                
            case .completed:
                Button("Restart") {
                    viewModel.reset()
                }
                .buttonStyle(.bordered)
                .glassEffect(.regular.interactive(), in: .rect(cornerRadius: 20))
            }
        }
        .padding()
        .animation(.easeInOut, value: viewModel.state)
    }
    
    private var title: String {
        switch viewModel.state {
        case .idle:
            return "Ready to Fast"
        case .running:
            return "Fasting in Progress"
        case .completed:
            return "Fasting Completed"
        }
    }
}

#Preview {
    FastingTimerView()
}
