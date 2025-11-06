import SwiftUI

struct TitleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title2.bold())
            .foregroundStyle(.primary)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    TitleText(text: "You’re fasting!")
}
