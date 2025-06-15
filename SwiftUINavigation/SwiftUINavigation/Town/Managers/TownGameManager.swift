import Foundation

class TownGameManager {

	let townGameState: TownGameState

	init(townGameState: TownGameState) {
		self.townGameState = townGameState
	}

	func getStateSnapshot() -> TownGameStateSnapshot {
		townGameState.extractSnapshot()
	}

	func addPotion() {

		var snapshot = townGameState.extractSnapshot()
		snapshot.potions += 1
		townGameState.applySnapshot(snapshot)
	}

	func removePotion() {

		var snapshot = townGameState.extractSnapshot()
		snapshot.potions -= 1
		townGameState.applySnapshot(snapshot)
	}
}
