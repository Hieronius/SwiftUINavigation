import SwiftUI

class RoomViewModel: ObservableObject {

	private let navigationManager: NavigationManager
	private let roomGameManager: RoomGameManager

	@Published var roomNumber = 0

	init(navigationManager: NavigationManager,
		 roomGameManager: RoomGameManager) {

		self.navigationManager = navigationManager
		self.roomGameManager = roomGameManager

		self.syncRoomStateWithUI()

		print("🔍 Path now has \(navigationManager.path.count) entries: \(navigationManager.path)")
	}

	func syncRoomStateWithUI() {

		let snapshot = roomGameManager.getStateSnapshot()
		self.roomNumber = snapshot.roomNumber
	}

	func addRoom() {
		roomGameManager.addRoom()
		syncRoomStateWithUI()
	}

	func removeRoom() {
		roomGameManager.removeRoom()
		syncRoomStateWithUI()
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
