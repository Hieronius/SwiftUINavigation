import SwiftUI

class TownViewModel: ObservableObject {

	private let navigationManager: NavigationManager

	init(navigationManager: NavigationManager) {
		self.navigationManager = navigationManager
	}
}

extension TownViewModel {

	func backToMenu() {
		navigationManager.pop()
	}

	func goToRoom() {
		navigationManager.pop()
		navigationManager.push(.room)
	}

	func goToDungeon() {
		navigationManager.pop()
		navigationManager.push(.dungeon)
	}

	func goToWorld() {
		navigationManager.pop()
		navigationManager.push(.world)
	}
}
