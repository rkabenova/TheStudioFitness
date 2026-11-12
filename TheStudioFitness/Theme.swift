import SwiftUI

extension Color {
    static let studioPink = Color(red: 1.0, green: 0.18, blue: 0.49)
    static let studioMagenta = Color(red: 0.84, green: 0.0, blue: 0.43)
    static let studioPurple = Color(red: 0.42, green: 0.17, blue: 0.85)
    static let studioDeepPurple = Color(red: 0.17, green: 0.067, blue: 0.31)
    static let studioMidnight = Color(red: 0.10, green: 0.055, blue: 0.18)
    static let studioBlack = Color(red: 0.071, green: 0.063, blue: 0.086)
    static let studioCard = Color(red: 0.14, green: 0.125, blue: 0.196)
    static let studioGold = Color(red: 0.957, green: 0.788, blue: 0.365)
    static let studioWhite = Color(red: 1.0, green: 0.984, blue: 0.996)
    static let studioGrey = Color(red: 0.671, green: 0.647, blue: 0.722)
    static let studioGreyDim = Color(red: 0.478, green: 0.455, blue: 0.533)
}

extension LinearGradient {
    static let heroGradient = LinearGradient(
        colors: [.studioPurple, .studioMagenta, .studioPink],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )

    static let ctaGradient = LinearGradient(
        colors: [.studioPink, .studioMagenta],
        startPoint: .leading,
        endPoint: .trailing
    )
}

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 16, weight: .semibold))
            .foregroundColor(.white)
            .padding(.vertical, 14)
            .frame(maxWidth: .infinity)
            .background(LinearGradient.ctaGradient)
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            .opacity(configuration.isPressed ? 0.8 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.98 : 1.0)
    }
}
