import Foundation

class TownGameState: GameStateManaging {

	typealias Snapshot = TownGameStateSnapshot

	var snapshot: Snapshot

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
