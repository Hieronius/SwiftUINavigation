import SwiftUI

class MenuViewModel: ObservableObject {

	private let compositionRoot: CompositionRoot
	private let navigationManager: NavigationManager

	@Published var path: NavigationPath

	init(compositionRoot: CompositionRoot,
		navigationManager: NavigationManager) {

		self.compositionRoot = compositionRoot
		self.navigationManager = navigationManager

		// MARK: This code makes Navigation Stack to work normally with Push/Pop but be cautious

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
	}

	func pushDungeon() {
		navigationManager.push(.dungeon)
	}

	func pushWorld() {
		navigationManager.push(.world)
	}

	func pushTown() {
		navigationManager.push(.town)
	}
}

extension MenuViewModel {

	func buildRoom() -> some View {
		compositionRoot.buildRoom()
	}

	func buildDungeon() -> some View {
		compositionRoot.buildDungeon()
	}

	func buildWorld() -> some View {
		compositionRoot.buildWorld()
	}

	func buildTown() -> some View {
		compositionRoot.buildTown()
	}

	
}


