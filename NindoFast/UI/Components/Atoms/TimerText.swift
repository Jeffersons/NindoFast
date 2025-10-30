import SwiftUI

struct TimerText: View {
    var elapsed: TimeInterval
    
    var body: some View {
        Text(elapsed.formattedTime)
            .font(.system(size: 38, weight: .semibold, design: .rounded))
            .monospacedDigit()
            .padding(.horizontal, 24)
            .padding(.vertical, 12)
            .glassEffect(.regular.interactive(), in: .rect(cornerRadius: 16))
    }
}

private extension TimeInterval {
    var formattedTime: String {
        let hrs = Int(self) / 3600
        let mins = (Int(self) % 3600) / 60
        let secs = Int(self) % 60
        
        return String(format: "%02d:%02d:%02d", hrs, mins, secs)
    }
}

#Preview {
    ZStack {
        LinearGradient(
            colors: [
                .blue.opacity(0.6),
                .purple.opacity(0.6),
                .pink.opacity(0.5)
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()

        Circle()
            .fill(.ultraThinMaterial)
            .frame(width: 250, height: 250)
            .offset(x: -100, y: -180)

        Circle()
            .fill(.thickMaterial)
            .frame(width: 180, height: 180)
            .offset(x: 120, y: 220)
            .blur(radius: 20)

        TimerText(elapsed: 21_110)
    }
}
