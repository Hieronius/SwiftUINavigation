import SwiftUI

class DungeonViewModel: ObservableObject {

	private let navigationManager: NavigationManager

	@Published private var path: NavigationPath

	init(navigationManager: NavigationManager) {
		self.navigationManager = navigationManager

		self.path = navigationManager.getPath()
	}

	func syncPath() {
		path = navigationManager.getPath()
	}

	func pop() {
		navigationManager.pop()
	}

	func pushRoom() {
		// push room
	}


}
