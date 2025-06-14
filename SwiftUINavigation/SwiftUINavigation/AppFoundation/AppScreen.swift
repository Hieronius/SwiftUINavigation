import Foundation

enum AppScreen: String, Hashable, Identifiable {

	case room = "Room"
	case dungeon = "Dungeon"
	case world = "World"
	case town = "Town"

	var id: AppScreen { self }
}
