import Foundation

class DungeonGameManager {

	private let dungeonGameState: DungeonGameState

	init(dungeonGameState: DungeonGameState) {
		self.dungeonGameState = dungeonGameState
	}

	func getStateSnapshot() -> DungeonGameStateSnapshot {
		dungeonGameState.extractSnapshot()
	}

	func addRooms() {
		var snapshot = dungeonGameState.extractSnapshot()
		snapshot.rooms += 1
		dungeonGameState.applySnapshot(snapshot)
	}

	func removeRooms() {
		var snapshot = dungeonGameState.extractSnapshot()
		snapshot.rooms -= 1
		dungeonGameState.applySnapshot(snapshot)
	}
}
