import Foundation

struct Screen: Hashable, Identifiable {

	let id = UUID()
	let type: AppScreen
	var label: String { type.rawValue }
}
