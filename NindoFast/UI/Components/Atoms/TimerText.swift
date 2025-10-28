import SwiftUI

struct TimerText: View {
    var elapsed: TimeInterval
    
    var body: some View {
        Text(elapsed.formattedTime)
            .font(.system(size: 38, weight: .semibold, design: .rounded))
            .monospacedDigit()
            .foregroundStyle(.primary)
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
    TimerText(elapsed: 21_110)
}
