import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                HStack {
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60)

                    Text("gymmaty")
                        .fontWeight(.black)
                        .font(.system(size: 30))
                }
                .padding(.bottom, 20)

                Text("Find your perfect gym match!")
                    .foregroundColor(.gray)
                    .font(.system(size: 20))

                Image("LoginImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 320)
                    .padding(.bottom, 280)

                NavigationLink(destination: ListView().navigationBarHidden(true)) {
                    ContinueButtonView(text: "Continue")
                }
                .padding()
            }
            .padding(.top, 40)
        }
    }
}

struct ContinueButtonView: View {
    var text: String
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Text(text)
                    .foregroundColor(.white)
                    .frame(width: geometry.size.width - 80, alignment: .center)
                    .bold()
            }
            .frame(width: geometry.size.width, height: 55)
            .background(Color("Color"))
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black)
            )
        }
        .frame(width: 320, height: 55)
    }
}
