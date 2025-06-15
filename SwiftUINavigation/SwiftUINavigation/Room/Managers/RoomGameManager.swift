import Foundation

class RoomGameManager {

	let roomGameState: RoomGameState

	init(roomGameState: RoomGameState) {
		self.roomGameState = roomGameState
	}

	func getStateSnapshot() -> RoomGameStateSnapshot {
		roomGameState.extractSnapshot()
	}

	func addRoom() {

		var snapshot = roomGameState.extractSnapshot()
		snapshot.roomNumber += 1
		roomGameState.applySnapshot(snapshot)
	}

	func removeRoom() {

		var snapshot = roomGameState.extractSnapshot()
		snapshot.roomNumber -= 1
		roomGameState.applySnapshot(snapshot)
	}
}
