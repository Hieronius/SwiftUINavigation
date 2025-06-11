import Foundation

struct Screen: Hashable, Identifiable {

	let type: AppScreen
	var id: AppScreen { type }
	var label: String { type.rawValue }
}
