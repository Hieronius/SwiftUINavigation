import SwiftUI

class WorldViewModel: ObservableObject {

	let navigationManager: NavigationManager
	let worldGameManager: WorldGameManager

	@Published var locationsNumber = 1

	init(navigationManager: NavigationManager,
		 worldGameManager: WorldGameManager) {
		
		self.navigationManager = navigationManager
		self.worldGameManager = worldGameManager

		syncStateWithUI()
	}
}

extension WorldViewModel {

	func syncStateWithUI() {
		let snapshot = worldGameManager.getStateSnapshot()
		locationsNumber = snapshot.locations
	}

	func addLocation() {
		worldGameManager.addLocations()
		syncStateWithUI()
	}

	func removeLocation() {
		worldGameManager.removeLocations()
		syncStateWithUI()
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
