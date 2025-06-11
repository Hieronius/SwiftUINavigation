import SwiftUI

struct MenuView: View {

	@StateObject private var viewModel: MenuViewModel

	init(viewModel: MenuViewModel) {
		_viewModel = StateObject(wrappedValue: viewModel)
	}

    var body: some View {

		Button("Menu") {
			print("We are on Menu")
		}

		// 1. Call Navigation Stack

		// 2. Bind NavigationPath property you want to observe

		NavigationStack(path: $viewModel.path) {

			// 3. Create the list or table of items to display

			List {

				Button("Push to Room") {
					viewModel.pushRoom()
				}

				Button("Push to Dungeon") {
					viewModel.pushDungeon()
				}
			}

			.navigationDestination(for: AppScreen.self) { screen in

				switch screen {

				case .room: viewModel.buildRoom()

				case .dungeon: viewModel.buildDungeon()

				default:

					EmptyView()
				}
			}
		}
    }
}
