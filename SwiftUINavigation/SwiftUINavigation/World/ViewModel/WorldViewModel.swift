import SwiftUI

class WorldViewModel: ObservableObject {

	let navigationManager: NavigationManager
	let worldGameManager: WorldGameManager

	init(navigationManager: NavigationManager,
		 worldGameManager: WorldGameManager) {
		
		self.navigationManager = navigationManager
		self.worldGameManager = worldGameManager
	}
}

extension WorldViewModel {

	func backToMenu() {
		navigationManager.pop()
	}

	func goToDungeon() {
		navigationManager.pop()
		navigationManager.push(.dungeon)
	}

	func goToRoom() {
		navigationManager.pop()
		navigationManager.push(.room)
	}

	func goToTown() {
		navigationManager.pop()
		navigationManager.push(.town)
	}
}
