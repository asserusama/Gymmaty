import SwiftUI

struct LaunchScreenView: View {
    @State private var logoPosition: CGFloat = UIScreen.main.bounds.height / 2
    @State private var showNextView = false
    @State private var nextViewOpacity = 0.0

    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()

            VStack {
                HStack(alignment: .center) {
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60)

                    Text("gymmaty")
                        .fontWeight(.black)
                        .font(.system(size: 30))
                }
                .padding(.top, logoPosition)

                Spacer()
            }

            if showNextView {
                LoginView()
                    .opacity(nextViewOpacity)
                    .transition(.opacity)
                    .zIndex(1)
            }
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 1)) {
                logoPosition = 85
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    showNextView = true
                }
                withAnimation(.easeInOut(duration: 0.5)) {
                    nextViewOpacity = 1.0
                }
            }
        }
    }
}
