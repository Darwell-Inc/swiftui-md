import SwiftUI


struct CheckListItemMarkdownVisibility: EnvironmentKey {
    static let defaultValue: Visibility = .automatic
}

internal extension EnvironmentValues {
    var markdownCheckListItemVisibility: CheckListItemMarkdownVisibility.Value {
        get { self[CheckListItemMarkdownVisibility.self] }
        set { self[CheckListItemMarkdownVisibility.self] = newValue }
    }
}

public extension View {
    /// Sets the visibility for checklist item markdown elements
    func markdownCheckListItem(_ visibility: Visibility) -> some View {
        environment(\.markdownCheckListItemVisibility, visibility)
    }
}

struct CheckListItemBulletMarkdownVisibility: EnvironmentKey {
    static let defaultValue: Visibility = .automatic
}

internal extension EnvironmentValues {
    var markdownCheckListItemBulletVisibility: CheckListItemBulletMarkdownVisibility.Value {
        get { self[CheckListItemBulletMarkdownVisibility.self] }
        set { self[CheckListItemBulletMarkdownVisibility.self] = newValue }
    }
}

public extension View {
    /// Sets the visibility for checklist bullet markdown elements
    func markdownCheckListItemBullet(_ visibility: Visibility) -> some View {
        environment(\.markdownCheckListItemBulletVisibility, visibility)
    }
}
