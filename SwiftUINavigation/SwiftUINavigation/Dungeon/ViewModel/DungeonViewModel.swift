import SwiftUI

class DungeonViewModel: ObservableObject {

	private let navigationManager: NavigationManager
	private let dungeonGameManager: DungeonGameManager

	init(navigationManager: NavigationManager,
		 dungeonGameManager: DungeonGameManager) {

		self.navigationManager = navigationManager
		self.dungeonGameManager = dungeonGameManager

		print("🔍 Path now has \(navigationManager.path.count) entries: \(navigationManager.path)")
	}

	func pop() {
		navigationManager.pop()
	}

	func pushRoom() {
		pop()
		navigationManager.push(.room)
	}

	func pushWorld() {
		pop()
		navigationManager.push(.world)
	}

	func pushTown() {
		pop()
		navigationManager.push(.town)
	}
}
