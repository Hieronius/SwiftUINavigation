import SwiftUI

class DungeonViewModel: ObservableObject {

	private let navigationManager: NavigationManager
	private let dungeonGameManager: DungeonGameManager

	@Published var roomsNumber = 1

	init(navigationManager: NavigationManager,
		 dungeonGameManager: DungeonGameManager) {

		self.navigationManager = navigationManager
		self.dungeonGameManager = dungeonGameManager

		syncStateWithUI()

		print("🔍 Path now has \(navigationManager.path.count) entries: \(navigationManager.path)")
	}

	func syncStateWithUI() {

		let snapshot = dungeonGameManager.getStateSnapshot()
		self.roomsNumber = snapshot.rooms
	}

	func addRooms() {
		dungeonGameManager.addRooms()
		syncStateWithUI()
	}

	func removeRooms() {
		dungeonGameManager.removeRooms()
		syncStateWithUI()
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
