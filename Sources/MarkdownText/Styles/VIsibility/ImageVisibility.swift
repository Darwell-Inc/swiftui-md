import SwiftUI


struct ImageMarkdownVisibility: EnvironmentKey {
    static let defaultValue: Visibility = .automatic
}

internal extension EnvironmentValues {
    var markdownImageVisibility: ImageMarkdownVisibility.Value {
        get { self[ImageMarkdownVisibility.self] }
        set { self[ImageMarkdownVisibility.self] = newValue }
    }
}

public extension View {
    /// Sets the visibility for image markdown elements
    func markdownImage(_ visibility: Visibility) -> some View {
        environment(\.markdownImageVisibility, visibility)
    }
}
