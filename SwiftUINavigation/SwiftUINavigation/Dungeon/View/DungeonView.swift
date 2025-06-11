import SwiftUI

struct DungeonView: View {

	@StateObject private var viewModel: DungeonViewModel

	init(viewModel: DungeonViewModel) {
		_viewModel = StateObject(wrappedValue: viewModel)
	}

	var body: some View {

		Spacer()

		Button("Go back to Menu") {
			viewModel.pop()
		}

		Spacer()

		Button("Go to Room") {
			viewModel.pushRoom()
		}

		Spacer()
	}
}
