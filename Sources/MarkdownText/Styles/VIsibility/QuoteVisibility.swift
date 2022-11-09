import SwiftUI


struct QuoteMarkdownVisibility: EnvironmentKey {
    static let defaultValue: Visibility = .automatic
}

internal extension EnvironmentValues {
    var markdownQuoteListVisibility: QuoteMarkdownVisibility.Value {
        get { self[QuoteMarkdownVisibility.self] }
        set { self[QuoteMarkdownVisibility.self] = newValue }
    }
}

public extension View {
    /// Sets the visibility for quote markdown elements
    func markdownQuote(_ visibility: Visibility) -> some View {
        environment(\.markdownQuoteListVisibility, visibility)
    }
}
