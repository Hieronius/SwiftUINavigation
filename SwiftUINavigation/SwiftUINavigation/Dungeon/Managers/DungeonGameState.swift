import Foundation

class DungeonGameState: GameStateManaging {

	typealias Snapshot = DungeonGameStateSnapshot

	private var snapshot: Snapshot

	init(snapshot: Snapshot) {
		self.snapshot = snapshot
	}

	func extractSnapshot() -> DungeonGameStateSnapshot {
		snapshot
	}

	func applySnapshot(_ snapshot: DungeonGameStateSnapshot) {
		self.snapshot = snapshot
	}
}
