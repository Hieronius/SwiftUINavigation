import Foundation

struct GlobalGameState {

	var roomGameStateSnapshot = RoomGameStateSnapshot()
	var corridorGameStateSnapshot = CorridorGameStateSnapshot()
	var dungeonGameStateSnapshot = DungeonGameStateSnapshot()
	var townGameStateSnapshot = TownGameStateSnapshot()
	var worldGameStateSnapshot = WorldGameStateSnapshot()
}

struct RoomGameStateSnapshot {

	var roomNumber = 1
}

struct CorridorGameStateSnapshot {

	var gold = 100
}

struct DungeonGameStateSnapshot {

	var rooms = 10
}
