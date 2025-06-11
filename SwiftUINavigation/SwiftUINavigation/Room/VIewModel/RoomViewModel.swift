import SwiftUI

class RoomViewModel: ObservableObject {

	private let navigationManager: NavigationManager

	init(navigationManager: NavigationManager) {
		self.navigationManager = navigationManager
		print("🔍 Path now has \(navigationManager.path.count) entries: \(navigationManager.path)")
	}

	func pop() {
		navigationManager.pop()
	}

	func pushDungeon() {
		pop()
		navigationManager.push(.dungeon)
	}
}
