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
                
            case .running:
                Button("Stop Fasting") {
                    viewModel.stopFasting()
                }
                .buttonStyle(.borderedProminent)
                
            case .completed:
                Button("Restart") {
                    viewModel.reset()
                }
                .buttonStyle(.bordered)
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
