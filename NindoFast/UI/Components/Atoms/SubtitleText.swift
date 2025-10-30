import SwiftUI

struct SubtitleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.footnote)
            .foregroundStyle(.secondary)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    SubtitleText(text: "163,881 people are fasting right now")
}
