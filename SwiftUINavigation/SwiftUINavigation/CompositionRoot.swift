import Foundation

class CompositionRoot {

	let navigationManager = NavigationManager()

	func getNavigationManager() -> NavigationManager {
		return self.navigationManager
	}

	func buildMenu() -> MenuView {

		let navigationManager = getNavigationManager()

		let viewModel = MenuViewModel(navigationManager: navigationManager)

		return MenuView(viewModel: viewModel)
	}
}
