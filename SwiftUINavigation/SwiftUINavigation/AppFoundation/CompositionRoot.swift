import Foundation

class CompositionRoot {

	// MARK: For each NavigationFlow create it's own NavigationManager here and inject while building a specific screen

	let navigationManager = NavigationManager()
	var globalGameState = GlobalGameState()

	func getNavigationManager() -> NavigationManager {
		self.navigationManager
	}

	func getGlobalGameState() -> GlobalGameState {
		self.globalGameState
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

		let viewModel = RoomViewModel(
			navigationManager: navigationManager
		)

		return RoomView(viewModel: viewModel)
	}

	func buildDungeon() -> DungeonView {

		let navigationManager = getNavigationManager()

		let viewModel = DungeonViewModel(
			navigationManager: navigationManager
		)

		return DungeonView(viewModel: viewModel)
	}

	func buildWorld() -> WorldView {

		let navigationManager = getNavigationManager()

		let viewModel = WorldViewModel(
			navigationManager: navigationManager
		)

		return WorldView(viewModel: viewModel)
	}

	func buildTown() -> TownView {

		let navigationManager = getNavigationManager()

		let globalGameState = getGlobalGameState()
		let townGameState = TownGameState(snapshot: globalGameState.townGameStateSnapshot)

		let townGameManager = TownGameManager(townGameState: townGameState)

		let viewModel = TownViewModel(
			navigationManager: navigationManager,
			townGameManager: townGameManager
		)

		return TownView(viewModel: viewModel)
	}
}
