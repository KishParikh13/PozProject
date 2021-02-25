import SwiftUI

struct Home: View {
    var body: some View {
        
        //content container
        VStack (spacing: 20){
            
            //quote of the day
            ZStack {
                Rectangle()
                    .cornerRadius(30)
                    .foregroundColor(Color(#colorLiteral(red: 0.9843137255, green: 0.7921568627, blue: 0.3921568627, alpha: 1)))
                    .frame(height: 240)
                    .frame(maxWidth: .infinity)
                VStack {
                    Text("Quote of the day")
                        .font(Font.custom("Blueberry", size: 18))
                        .padding(.bottom, 5)
                    Text("Life is like riding a bicycle. To keep your balance you must keep moving.")
                        .font(Font.custom("Poppins-Regular", size: 24))
                        .padding(.horizontal, 20)
                        .padding(.bottom, -10)
                }
                Text("-Albert Einstein")
                    .font(Font.custom("Blueberry", size: 16))
                    .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, -30)
                    .offset(x: 100, y: 60)
            }
            
            //pozes completed
            ZStack {
                Rectangle()
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.5905995735, blue: 0.3327291904, alpha: 1)))
                    .cornerRadius(20)
                    .frame(width: 370, height: 200)
                    .padding(.horizontal, 20)
                VStack {
                    Text("0/2 Pozes\nCompleted Today")
                        .font(Font.custom("Blueberry", size: 24))
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, -5)
                    Image("poz").resizable()
                        .frame(width: 50, height: 50)
                }
            }
            
            //breathing buttons
            HStack {
                //circle breathing
                ZStack {
                    Circle()
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6238786347, blue: 0.8998633145, alpha: 1)))
                        .frame(width: 140, height: 140)
                    VStack {
                        Text("Circle \n Breathing")
                            .font(Font.custom("Blueberry", size: 24))
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .multilineTextAlignment(.center)
                    }
                }
                //box breathing
                ZStack {
                    Rectangle()
                        .cornerRadius(20)
                        .foregroundColor(Color(#colorLiteral(red: 0.1757411827, green: 0.7647245238, blue: 0.8998633145, alpha: 1)))
                        .frame(width:200, height: 150)
                    VStack {
                        Text("Box Breathing")
                            .font(Font.custom("Blueberry", size: 24))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .padding(.bottom, 5)
                    }
                }
            }
            Spacer()
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
