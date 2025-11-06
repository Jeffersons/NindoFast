import SwiftUI

struct FastingTimerView: View {
    @StateObject private var viewModel = FastingTimerBuilder.build()
    
    var body: some View {
        ZStack {
            AnimatedGeometricBackground()
            
            VStack(spacing: 32) {
                VStack(spacing: 8) {
                    TitleText(text: "You're fasting!")
                    SubtitleText(text: "You body is healing - stay focused.")
                        .foregroundStyle(.secondary)
                        .shadow(color: .black.opacity(0.2), radius: 2, x: 0, y: 1)
                }
                .multilineTextAlignment(.center)
                
                SimpleSemiCircleProgress(progress: 0.75)
                
                Spacer()
            }
        }
    }
}

#Preview {
    FastingTimerView()
}
