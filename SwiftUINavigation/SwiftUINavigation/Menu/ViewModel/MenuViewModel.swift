import SwiftUI

class MenuViewModel: ObservableObject {

	let navigationManager: NavigationManager

	@Published var items = [

		Screen(type: .dungeon),
		Screen(type: .room)
	]

	@Published var path: NavigationPath

	init(navigationManager: NavigationManager) {
		self.navigationManager = navigationManager

		self.path = navigationManager.getPath()
	}
}
