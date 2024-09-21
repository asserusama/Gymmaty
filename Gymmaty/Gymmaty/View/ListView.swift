import SwiftUI

struct ListView: View {
    @State private var isSearching = false
    @State private var searchQuery = ""
    @StateObject private var viewModel = GymViewModel()

    var filteredGyms: [Gym] {
        searchQuery.isEmpty ? viewModel.gyms : viewModel.gyms.filter { $0.name.lowercased().contains(searchQuery.lowercased()) }
    }

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Text("Welcome!")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)

                    Spacer()

                    if isSearching {
                        TextField("Search...", text: $searchQuery)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(8)
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                            .frame(width: 150)
                    }

                    Button(action: { withAnimation { isSearching.toggle() } }) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white)
                    }
                }
                .padding(.horizontal, 30)
                .padding(.vertical, 20)
                .background(Color("Color"))

                Picker("Sort By", selection: $viewModel.sortOrder) {
                    Text("Distance").tag(GymViewModel.SortOrder.distance)
                    Text("Price").tag(GymViewModel.SortOrder.price)
                    Text("Name").tag(GymViewModel.SortOrder.name)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)

                List(filteredGyms) { gym in
                    NavigationLink(destination: GymView(gym: gym)) {
                        HStack {
                            Image(gym.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .padding()

                            VStack(alignment: .leading) {
                                Text(gym.name)
                                    .font(.title3)
                                    .bold()

                                Text(gym.distance)
                                    .foregroundColor(.gray)

                                Text("\(gym.price) Monthly")
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
                .listStyle(.plain)
            }
            .navigationBarHidden(true)
            .onChange(of: viewModel.sortOrder) { _ in viewModel.sortGyms() }
            .onChange(of: searchQuery) { _ in viewModel.sortGyms() } // Sort when search query changes
        }
    }
}
