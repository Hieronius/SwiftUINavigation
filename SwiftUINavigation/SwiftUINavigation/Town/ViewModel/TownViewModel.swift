import SwiftUI

class TownViewModel: ObservableObject {

	private let navigationManager: NavigationManager
	private let townGameManager: TownGameManager

	init(navigationManager: NavigationManager,
		 townGameManager: TownGameManager) {

		self.navigationManager = navigationManager
		self.townGameManager = townGameManager
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
