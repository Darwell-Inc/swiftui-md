import SwiftUI


struct ThematicBreakMarkdownVisibility: EnvironmentKey {
    static let defaultValue: Visibility = .automatic
}

internal extension EnvironmentValues {
    var markdownThematicBreakVisibility: ThematicBreakMarkdownVisibility.Value {
        get { self[ThematicBreakMarkdownVisibility.self] }
        set { self[ThematicBreakMarkdownVisibility.self] = newValue }
    }
}

public extension View {
    /// Sets the visibility for thematic break markdown elements
    func markdownThematicBreak(_ visibility: Visibility) -> some View {
        environment(\.markdownThematicBreakVisibility, visibility)
    }
}
