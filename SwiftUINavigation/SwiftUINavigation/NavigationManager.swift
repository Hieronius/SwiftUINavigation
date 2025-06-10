import SwiftUI

class NavigationManager {

	private var path = NavigationPath()

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
	}

	func pop() {
		guard !path.isEmpty else { return }
		path.removeLast()
	}
}
