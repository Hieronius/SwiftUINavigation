import SwiftUI

class MenuViewModel: ObservableObject {

	let compositionRoot: CompositionRoot
	let navigationManager: NavigationManager

	@Published var items = [

		Screen(type: .dungeon),
		Screen(type: .room)
	]

	@Published var path: NavigationPath

	init(compositionRoot: CompositionRoot,
		navigationManager: NavigationManager) {

		self.compositionRoot = compositionRoot
		self.navigationManager = navigationManager

		self.path = self.navigationManager.getPath()
	}
}

extension MenuViewModel {

	func buildRoom() -> some View {

		self.compositionRoot.buildRoom()
	}

	func buildDungeon() -> some View {

		compositionRoot.buildDungeon()
	}
}
