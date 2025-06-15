import Foundation

class WorldGameManager {

	private let worldGameState: WorldGameState

	init(worldGameState: WorldGameState) {
		self.worldGameState = worldGameState
	}

	func getStateSnapshot() -> WorldGameStateSnapshot {
		worldGameState.extractSnapshot()
	}

	func addLocations() {

		var snapshot = worldGameState.extractSnapshot()
		snapshot.locations += 1
		worldGameState.applySnapshot(snapshot)
	}

	func removeLocations() {

		var snapshot = worldGameState.extractSnapshot()
		snapshot.locations -= 1
		worldGameState.applySnapshot(snapshot)
	}
}
