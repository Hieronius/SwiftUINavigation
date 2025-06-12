import SwiftUI

struct DungeonView: View {

	@StateObject private var viewModel: DungeonViewModel

	init(viewModel: DungeonViewModel) {
		_viewModel = StateObject(wrappedValue: viewModel)
	}

	var body: some View {

		VStack {

			Spacer()
			Text("Dungeon")

			Spacer()

			Button("Go back to Menu") {
				withAnimation { viewModel.pop() }
			}

			Spacer()

			Button("Go to Room") {
				viewModel.pushRoom()
			}

			Spacer()

			Button("Go to World") {
				viewModel.pushWorld()
			}

			Button("Go to Town") {
				viewModel.pushTown()
			}
		}
		.navigationBarBackButtonHidden(true)
	}
}
