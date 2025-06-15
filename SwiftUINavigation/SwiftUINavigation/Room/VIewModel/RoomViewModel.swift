import SwiftUI

class RoomViewModel: ObservableObject {

	private let navigationManager: NavigationManager
	private let roomGameManager: RoomGameManager

	init(navigationManager: NavigationManager,
		 roomGameManager: RoomGameManager) {

		self.navigationManager = navigationManager
		self.roomGameManager = roomGameManager
		
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
