import SwiftUI 

struct RoomView: View {

	@StateObject private var viewModel: RoomViewModel

	init(viewModel: RoomViewModel) {
		_viewModel = StateObject(wrappedValue: viewModel)
	}

	var body: some View {

		Spacer()
		Text("Room")
		Spacer()

		Button("Go back to Menu") {
			withAnimation { viewModel.pop() }
		}

		Spacer()

		Button("Go to Dungeon") {
			viewModel.pushDungeon()
		}

		Spacer()
	}
}
