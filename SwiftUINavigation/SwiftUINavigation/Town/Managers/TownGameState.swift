import Foundation

class TownGameState {

	var snapshot: TownGameStateSnapshot

	init(snapshot: TownGameStateSnapshot) {
		self.snapshot = snapshot
	}

	func extractSnapshot() -> TownGameStateSnapshot {
		snapshot
	}

	func applySnapshot(_ snapshot: TownGameStateSnapshot) {
		self.snapshot = snapshot
	}

	
}
