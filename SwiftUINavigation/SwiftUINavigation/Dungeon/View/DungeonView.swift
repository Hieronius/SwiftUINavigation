import SwiftUI

struct DungeonView: View {

	@StateObject private var viewModel: DungeonViewModel

	init(viewModel: DungeonViewModel) {
		_viewModel = StateObject(wrappedValue: viewModel)
	}

	var body: some View {

		Spacer()

		Text("\(viewModel.roomsNumber)")

		Spacer()


		HStack {
			Button("Add Rooms") {
				viewModel.addRooms()
			}
			Button("Remove Rooms") {
				viewModel.removeRooms()
			}
		}

		Spacer()

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
