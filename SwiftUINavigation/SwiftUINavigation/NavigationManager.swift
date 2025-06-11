import SwiftUI

class NavigationManager: ObservableObject {

	@Published var path = NavigationPath()

	var isEmpty: Bool {
		return path.isEmpty
	}

	var count: Int {
		return path.count
	}

	func getPath() -> NavigationPath {
		return path
	}

	func push(_ screen: AppScreen) {
		path.append(screen)
		print("🔍 Path now has \(path.count) entries: \(path)")

	}

	func pop() {
		guard !path.isEmpty else { return }
		path.removeLast()
		print("🔍 Path now has \(path.count) entries: \(path)")

	}

}
