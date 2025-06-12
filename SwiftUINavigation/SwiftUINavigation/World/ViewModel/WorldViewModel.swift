import SwiftUI

class WorldViewModel: ObservableObject {

	let navigationManager: NavigationManager

	init(navigationManager: NavigationManager) {
		self.navigationManager = navigationManager
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
