import SwiftUI

class TownViewModel: ObservableObject {

	private let navigationManager: NavigationManager
	private let townGameManager: TownGameManager

	@Published var potionsNumber = 1

	init(navigationManager: NavigationManager,
		 townGameManager: TownGameManager) {

		self.navigationManager = navigationManager
		self.townGameManager = townGameManager

		syncStateWithUI()
	}
}

extension TownViewModel {

	func syncStateWithUI() {

		let snapshot = townGameManager.getStateSnapshot()
		potionsNumber = snapshot.potions
	}

	func addPotion() {

		townGameManager.addPotion()
		syncStateWithUI()
	}

	func removePotion() {

		townGameManager.removePotion()
		syncStateWithUI()
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
