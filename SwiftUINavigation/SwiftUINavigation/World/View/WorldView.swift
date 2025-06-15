
import SwiftUI

struct WorldView: View {

	@StateObject private var viewModel: WorldViewModel

	init(viewModel: WorldViewModel) {
		_viewModel = StateObject(wrappedValue: viewModel)
	}

	var body: some View {

		Spacer()

		Text("\(viewModel.locationsNumber)")

		Spacer()

		HStack {

			Button("Add Location") {
				viewModel.addLocation()
			}

			Spacer()

			Button("Remove Location") {

				viewModel.removeLocation()
			}
		}

		VStack {

			Spacer()

			Text("World")

			Spacer()

			Button("Go to Menu") {
				viewModel.backToMenu()
			}

			Spacer()

			Button("Go to Room") {
				viewModel.goToRoom()
			}

			Spacer()

			Button("Go to Dungeon") {
				viewModel.goToDungeon()
			}

			Spacer()

			Button("Go to Town") {
				viewModel.goToTown()
			}
		}
		.navigationBarBackButtonHidden(true)

	}
}
