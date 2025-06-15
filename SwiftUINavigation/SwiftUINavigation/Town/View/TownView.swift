import SwiftUI

struct TownView: View {

	@StateObject private var viewModel: TownViewModel

	init(viewModel: TownViewModel) {
		_viewModel = StateObject(wrappedValue: viewModel)
	}

	var body: some View {

		Spacer()
		Text("\(viewModel.potionsNumber)")
		Spacer()

		HStack {
			Spacer()
			Button("buy potion") {
				viewModel.addPotion()
			}
			Spacer()
			Button("sell potion") {
				viewModel.removePotion()
			}
			Spacer()
		}

		VStack {

			Spacer()

			Text("Town")

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

			Button("Go to World") {
				viewModel.goToWorld()
			}
		}
		.navigationBarBackButtonHidden(true)
	}
}
