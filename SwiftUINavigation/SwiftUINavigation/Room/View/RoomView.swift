import SwiftUI 

struct RoomView: View {

	@StateObject private var viewModel: RoomViewModel

	init(viewModel: RoomViewModel) {
		_viewModel = StateObject(wrappedValue: viewModel)
	}

	var body: some View {

		Button("Go back to Menu") {
			self.viewModel.pop()
		}

		Button("Go to Dungeon") {
			self.viewModel.pushDungeon()
		}
	}
}
