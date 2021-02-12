import SwiftUI

struct Home: View {
    var body: some View {
        //OnboardOne
        VStack {

            //heading text
            Welcome_Text()
            
            
            // big image
            Images()
            .padding(.top, -60)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            // nav button to next screen
            NavigationLink(destination: EnterName()) {
                Text("Get Started")
                    .font(Font.custom("Poppins-Regular", size: 20))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    .frame(width: 200, height: 50)
                    .background(Color(#colorLiteral(red: 0.9853331447, green: 0.7925021052, blue: 0.3908675313, alpha: 1)))
                    .cornerRadius(50)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 60)
            }
            
            //testing bottom navigation
//            .tabItem {
//                    Image(systemName: "phone.fill")
//                    Text("First Tab")
//                  }
            
        }
        .navigationBarBackButtonHidden(true)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
    }
}

// home screen text
struct Welcome_Text: View {
    var body: some View {
    //    Spacer()
        Text("Welcome to Poz")
            .font(Font.custom("Blueberry Regular", size: 48))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
             .padding(.top, 60)
            .padding(.bottom, 2)
        Text("Take a moment for yourself")
            .font(Font.custom("Poppins-Regular", size: 20))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
     //   Spacer()
    }
}

//home screen image
struct Images: View {
    var body: some View {
        ZStack {
            Image("Meditation-cuate").resizable()
                .frame(width: 400, height: 400)
        }
    }
}
