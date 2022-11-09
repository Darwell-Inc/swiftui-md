import SwiftUI


struct ListLabelStyle: LabelStyle {
    struct Content: View {
        let configuration: Configuration

        var body: some View {
            HStack(alignment: .firstTextBaseline, spacing: 0) {
                configuration.icon
                Text(Array(repeating: " ", count: 1).joined())
                configuration.title
            }
        }
    }

    init() { }
    func makeBody(configuration: Configuration) -> some View {
        Content(configuration: configuration)
    }
}

extension LabelStyle where Self == ListLabelStyle {
    static var list: Self { .init() }
}
