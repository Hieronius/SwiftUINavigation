import Foundation

class CompositionRoot {

	let navigationManager = NavigationManager()

	func getNavigationManager() -> NavigationManager {
		return self.navigationManager
	}

	func buildMenu() -> MenuView {

		let compositionRoot = self

		let navigationManager = getNavigationManager()

		let viewModel = MenuViewModel(
			compositionRoot: compositionRoot,
			navigationManager: navigationManager
		)

		return MenuView(viewModel: viewModel)
	}

	func buildRoom() -> RoomView {

		let navigationManager = getNavigationManager()

		let viewModel = RoomViewModel(navigationManager: navigationManager)

		return RoomView(viewModel: viewModel)
	}

	func buildDungeon() -> DungeonView {

		let navigationManager = getNavigationManager()

		let viewModel = DungeonViewModel(navigationManager: navigationManager)

		return DungeonView(viewModel: viewModel)
	}
}
