import SwiftUI

struct GymView: View {
    var gym: Gym
    @State private var currentIndex = 0
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            TabView(selection: $currentIndex) {
                ForEach(gym.images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 240)
                        .cornerRadius(30)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: 300)

            VStack {
                HStack {
                    Button(action: { presentationMode.wrappedValue.dismiss() }) {
                        Image(systemName: "arrowshape.backward.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }

                    Text(gym.name)
                        .font(.title2)
                        .foregroundColor(.white)
                        .bold()
                }
                .padding(.horizontal, 50)
                .padding(.bottom, 120)

                HStack(spacing: 8) {
                    ForEach(0..<gym.images.count, id: \.self) { index in
                        Circle()
                            .fill(Color.white)
                            .frame(width: currentIndex == index ? 12 : 8, height: currentIndex == index ? 12 : 8)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)

        List(gym.options.indices, id: \.self) { index in
            HStack {
                Text(gym.options[index].option)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .bold()

                Divider()

                Text(gym.options[index].price)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.center)
            }
            .listRowSeparator(.hidden)
            .padding()
            .background(index % 2 == 0 ? Color.white : Color.gray.opacity(0.2))
            .cornerRadius(10)
        }
        .listStyle(.plain)
        .padding([.leading, .trailing], 15)

        Button {
            let latitude = gym.location.latitude
            let longitude = gym.location.longitude
            if let url = URL(string: "https://maps.apple.com/?ll=\(latitude),\(longitude)") {
                UIApplication.shared.open(url)
            }
        } label: {
            Text("Get Location")
                .frame(width: 320, height: 55)
                .background(Color("Color"))
                .foregroundColor(.white)
                .cornerRadius(20)
                .bold()
        }
    }
}


