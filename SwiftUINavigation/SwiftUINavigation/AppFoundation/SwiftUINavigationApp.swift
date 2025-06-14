import SwiftUI

@main
struct SwiftUINavigationApp: App {

	private let compositionRoot = CompositionRoot()

    var body: some Scene {

        WindowGroup {

			compositionRoot.buildMenu()
        }
    }
}
