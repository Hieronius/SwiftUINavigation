import SwiftUI

class DungeonViewModel: ObservableObject {

	private let navigationManager: NavigationManager

	init(navigationManager: NavigationManager) {
		self.navigationManager = navigationManager

		print("🔍 Path now has \(navigationManager.path.count) entries: \(navigationManager.path)")
	}

	func pop() {
		navigationManager.pop()
	}

	func pushRoom() {
		pop()
		navigationManager.push(.room)
	}


}
