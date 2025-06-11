import SwiftUI

class MenuViewModel: ObservableObject {

	let compositionRoot: CompositionRoot
	var navigationManager: NavigationManager

	@Published var path: NavigationPath = NavigationPath()

	@Published var items = [

		Screen(type: .dungeon),
		Screen(type: .room)
	]

	init(compositionRoot: CompositionRoot,
		navigationManager: NavigationManager) {

		self.compositionRoot = compositionRoot
		self.navigationManager = navigationManager

		// MARK: This code makes Navigation Stack to work normally with Push/Pop but i don't want to use Combine
		// Observe navigationManager.path updates
				self.path = navigationManager.path
				navigationManager.$path
					.receive(on: DispatchQueue.main)
					.assign(to: &$path)
	}
}

extension MenuViewModel {

	func pushRoom() {
		navigationManager.push(.room)
//		self.path = navigationManager.path
	}

	func pushDungeon() {
		navigationManager.push(.dungeon)
//		self.path = navigationManager.path
	}
}

extension MenuViewModel {

	func buildRoom() -> some View {
		compositionRoot.buildRoom()
	}

	func buildDungeon() -> some View {
		compositionRoot.buildDungeon()
	}
}


