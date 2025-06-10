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

			List(viewModel.items) { item in

				// 4. Each option it's a Navigation Link

				NavigationLink(item.label, value: item)
			}

			.navigationDestination(for: Screen.self) { screen in

				switch screen.type {

				case .room: viewModel.buildRoom()

				case .dungeon:

					EmptyView()

				default:

					EmptyView()
				}
			}
		}
    }
}
