import Foundation

class RoomGameState: GameStateManaging {

	typealias Snapshot = RoomGameStateSnapshot

	private var snapshot: Snapshot

	init(snapshot: Snapshot) {
		self.snapshot = snapshot
	}

	func extractSnapshot() -> RoomGameStateSnapshot {
		snapshot
	}

	func applySnapshot(_ snapshot: RoomGameStateSnapshot) {
		self.snapshot = snapshot
	}
}
