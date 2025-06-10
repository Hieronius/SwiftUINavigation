import SwiftUI

class RoomViewModel: ObservableObject {

	private let navigationManager: NavigationManager

	@Published private var path: NavigationPath

	init(navigationManager: NavigationManager) {
		self.navigationManager = navigationManager

		self.path = self.navigationManager.getPath()
	}

	func pop() {
		navigationManager.pop()
	}

	func pushDungeon() {
//		navigationManager.
	}
}
