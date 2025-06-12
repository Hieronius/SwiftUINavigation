import SwiftUI 

struct RoomView: View {

	@StateObject private var viewModel: RoomViewModel

	init(viewModel: RoomViewModel) {
		_viewModel = StateObject(wrappedValue: viewModel)
	}

	var body: some View {

		VStack {
			Spacer()
			Text("Room")
			Spacer()

			Button("Go back to Menu") {
				viewModel.backToMenu()
			}

			Spacer()

			Button("Go to Dungeon") {
				viewModel.pushDungeon()
			}

			Button("Go to World") {
				viewModel.pushWorld()
			}

			Button("Go to Town") {
				viewModel.pushTown()
			}

			Spacer()

		}
		.navigationBarBackButtonHidden(true)
	}
}
