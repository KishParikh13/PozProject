import SwiftUI

struct ContentView: View {
    @State var index = 0
    @State private var isWelcomeScreensShowing = true;
    @State private var isEnterNameScreenShowing = true;
    
    var body: some View {
        VStack {
            if (isWelcomeScreensShowing == true) {
                    Onboarding()
                    Button(action: {isWelcomeScreensShowing = false}) {
                        Text("Get Started")
                            .font(Font.custom("Poppins-Regular", size: 20))
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .frame(width: 200, height: 50)
                            .background(Color(#colorLiteral(red: 0.9853331447, green: 0.7925021052, blue: 0.3908675313, alpha: 1)))
                            .cornerRadius(50)
                            .padding(.horizontal, 20)
                            .padding(.bottom, 60)
                    }
                
            } else {
                if (isEnterNameScreenShowing == true) {
                    EnterName()
                    Button(action: {isEnterNameScreenShowing = false}) {
                            Text("Next")
                                .font(Font.custom("Poppins-Regular", size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                .frame(width: 200, height: 50)
                                .background(Color(#colorLiteral(red: 0.9853331447, green: 0.7925021052, blue: 0.3908675313, alpha: 1)))
                                .cornerRadius(50)
                                .padding(.horizontal, 20)
                                .padding(.bottom, 60)
                    }
                    
                } else {
                    if (self.index == 0) {
                        Home()
                    }
                    
                    if (self.index == 1) {
                        RateMood()
                    }
                    
                    if (self.index == 2) {
                        Dashboard()
                    }
                    
                    //Spacer()
                    bottomTabs(index: self.$index)
                }
            }
        }
        .ignoresSafeArea(edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
    }
}
//  (action: {isWelcomeScreensShowing = false})

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct bottomTabs: View {
    
    @Binding var index: Int
    
    var body: some View {
        VStack {

            ZStack {
                HStack {
                    Button(action: {self.index = 0}) {
                        VStack {
                            Image("homeIcon").resizable()
                                .frame(width: 50, height: 50)
                        }
                        .opacity((self.index == 0 ? 1 : 0.3))
                        .padding(.leading, 60)
                        .padding(.bottom, 10)
                    }

                    Spacer(minLength: 0)

                    Button(action: {self.index = 1}) {
                        ZStack {
                            Circle()
                                .frame(width: 95, height: 95)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            Circle()
                                .frame(width: 80, height: 80)
                                .foregroundColor(Color(#colorLiteral(red: 0.9853331447, green: 0.7925021052, blue: 0.3908675313, alpha: 1)))
                            Image("poz").resizable()
                                .frame(width: 30, height: 30)
                        }
                        .offset(y: -50)
                    }

                    Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)

                    Button(action: {self.index = 2}) {
                        VStack {
                            Image("statsIcon").resizable()
                                .frame(width: 50, height: 50)
                        }
                        .opacity((self.index == 2 ? 1 : 0.3))
                        .padding(.trailing, 60)
                        .padding(.bottom, 10)
                    }
                }
                .padding(.top, 0)
                .background(Color(#colorLiteral(red: 0.9552872777, green: 0.9552872777, blue: 0.9552872777, alpha: 1)))
                //.clipShape(CBar())
            }
        }
    }
    
}

//next steps:
// add some kind of message/prescription at the end of the flow
// face scan for emotions?
//connect to therapist feature
// fix/remove poop emoji
