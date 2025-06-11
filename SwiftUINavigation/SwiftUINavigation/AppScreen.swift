import Foundation

enum AppScreen: String, Hashable, Identifiable {

	case menu = "Menu"
	case room = "Room"
	case dungeon = "Dungeon"

	var id: AppScreen { self }
}
