import SwiftUI

class RoomViewModel: ObservableObject {

	private let navigationManager: NavigationManager

	init(navigationManager: NavigationManager) {
		self.navigationManager = navigationManager
		print("🔍 Path now has \(navigationManager.path.count) entries: \(navigationManager.path)")
	}

	func backToMenu() {
		navigationManager.pop()
	}

	func pushDungeon() {
		backToMenu()
		navigationManager.push(.dungeon)
	}

	func pushWorld() {
		backToMenu()
		navigationManager.push(.world)
	}

	func pushTown() {
		backToMenu()
		navigationManager.push(.town)
	}
}
