import SwiftUI


#warning("Refactor to allow for range based API as well (inspo: DynamicType API)")

struct HeadingMarkdownVisibility: EnvironmentKey {
    static let defaultValue: Visibility = .automatic
}

internal extension EnvironmentValues {
    var markdownHeadingVisibility: HeadingMarkdownVisibility.Value {
        get { self[HeadingMarkdownVisibility.self] }
        set { self[HeadingMarkdownVisibility.self] = newValue }
    }
}

public extension View {
    /// Sets the visibility for heading markdown elements
    func markdownHeading(_ visibility: Visibility) -> some View {
        environment(\.markdownHeadingVisibility, visibility)
    }
}
