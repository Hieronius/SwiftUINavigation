import Foundation

class WorldGameState: GameStateManaging {

	typealias Snapshot = WorldGameStateSnapshot

	private var snapshot: Snapshot

	init(snapshot: Snapshot) {
		self.snapshot = snapshot
	}

	func extractSnapshot() -> Snapshot {
		snapshot
	}

	func applySnapshot(_ snapshot: Snapshot) {
		self.snapshot = snapshot
	}

}
