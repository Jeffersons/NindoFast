import SwiftUI

struct SimpleSemiCircleProgress: View {
    var progress: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0.0, to: 0.5)
                .stroke(
                    LinearGradient(
                        colors: [Color.white.opacity(0.15), Color.white.opacity(0.05)],
                        startPoint: .leading,
                        endPoint: .trailing
                    ),
                    style: StrokeStyle(lineWidth: 14, lineCap: .round)
                )
                .rotationEffect(.degrees(180))
            
            Circle()
                .trim(from: 0.0, to: 0.5 * progress)
                .stroke(
                    LinearGradient(
                        colors: [
                            Color.white.opacity(0.9),
                            Color.white.opacity(0.5)
                        ],
                        startPoint: .leading,
                        endPoint: .trailing
                    ),
                    style: StrokeStyle(lineWidth: 20, lineCap: .round)
                )
                .rotationEffect(.degrees(180))
                .animation(.easeInOut(duration: 0.4), value: progress)
        }
        .frame(width: 240, height: 240)
    }
}

#Preview {
    ZStack {
        LinearGradient(colors: [.pink, .orange], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
        
        VStack {
            SimpleSemiCircleProgress(progress: 0.75)
        }
    }
}
