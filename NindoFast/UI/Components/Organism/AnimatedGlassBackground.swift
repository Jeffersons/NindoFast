import SwiftUI

struct AnimatedGeometricBackground: View {
    @State private var animate = false

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    .clPinkSoft,
                    .clPurpleSoft,
                    .clCoral
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            GeometryReader { geo in
                ZStack {
                    Circle()
                        .fill(Color.clLavender.opacity(0.4))
                        .frame(width: 280, height: 280)
                        .blur(radius: 6)
                        .offset(x: animate ? -80 : -130, y: animate ? -100 : -200)
                        .scaleEffect(animate ? 1.1 : 0.95)
                        .animation(.easeInOut(duration: 10).repeatForever(autoreverses: true), value: animate)

                    Triangle()
                        .fill(Color.clCoral.opacity(0.3))
                        .frame(width: 260, height: 260)
                        .rotationEffect(.degrees(animate ? 15 : -15))
                        .offset(x: animate ? 120 : 80, y: animate ? 180 : 230)
                        .blur(radius: 2)
                        .animation(.easeInOut(duration: 12).repeatForever(autoreverses: true), value: animate)

                    RoundedRectangle(cornerRadius: 60)
                        .fill(Color.clBlush.opacity(0.35))
                        .frame(width: 320, height: 200)
                        .rotationEffect(.degrees(animate ? -10 : 10))
                        .offset(x: animate ? -50 : -20, y: animate ? 260 : 220)
                        .blur(radius: 8)
                        .animation(.easeInOut(duration: 14).repeatForever(autoreverses: true), value: animate)

                    Circle()
                        .fill(Color.clPeach.opacity(0.25))
                        .frame(width: 140, height: 140)
                        .offset(x: animate ? 80 : 40, y: animate ? -250 : -280)
                        .blur(radius: 10)
                        .animation(.easeInOut(duration: 9).repeatForever(autoreverses: true), value: animate)
                }
                .frame(width: geo.size.width, height: geo.size.height)
            }
        }
        .onAppear { animate = true }
    }
}

#Preview {
    ZStack {
        AnimatedGeometricBackground()
        TimerText(elapsed: 21_110)
    }
}

// MARK: - Supporting Shape
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}
