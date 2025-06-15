import Foundation

struct GlobalGameState {

	var roomGameStateSnapshot = RoomGameStateSnapshot()
	var corridorGameStateSnapshot = CorridorGameStateSnapshot()
	var dungeonGameStateSnapshot = DungeonGameStateSnapshot()
	var townGameStateSnapshot = TownGameStateSnapshot()
	var worldGameStateSnapshot = WorldGameStateSnapshot()
}

struct CorridorGameStateSnapshot {

	var gold = 100
}
