import Foundation

class CompositionRoot {

	// MARK: For each NavigationFlow create it's own NavigationManager here and inject while building a specific screen

	let navigationManager = NavigationManager()
	var globalGameState = GlobalGameState()
	// let swiftDataManager = SwiftDataManager()

	func buildMenu() -> MenuView {

		let compositionRoot = self

		let navigationManager = self.navigationManager

		let viewModel = MenuViewModel(
			compositionRoot: compositionRoot,
			navigationManager: navigationManager
		)

		return MenuView(viewModel: viewModel)
	}

	func buildRoom() -> RoomView {

		let navigationManager = self.navigationManager

		let viewModel = RoomViewModel(
			navigationManager: navigationManager
		)

		return RoomView(viewModel: viewModel)
	}

	func buildDungeon() -> DungeonView {

		let navigationManager = self.navigationManager

		let viewModel = DungeonViewModel(
			navigationManager: navigationManager
		)

		return DungeonView(viewModel: viewModel)
	}

	func buildWorld() -> WorldView {

		let navigationManager = self.navigationManager

		let worldGameState = WorldGameState(
			snapshot: self.globalGameState.worldGameStateSnapshot
		)

		let worldGameManager = WorldGameManager(
			worldGameState: worldGameState
		)

		let viewModel = WorldViewModel(
			navigationManager: navigationManager,
			worldGameManager: worldGameManager
		)

		return WorldView(viewModel: viewModel)
	}

	func buildTown() -> TownView {

		let navigationManager = self.navigationManager

		let townGameState = TownGameState(
			snapshot: self.globalGameState.townGameStateSnapshot
		)

		let townGameManager = TownGameManager(
			townGameState: townGameState
		)

		let viewModel = TownViewModel(
			navigationManager: navigationManager,
			townGameManager: townGameManager
		)

		return TownView(viewModel: viewModel)
	}
}
