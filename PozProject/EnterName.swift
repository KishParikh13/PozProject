import SwiftUI

struct EnterName: View {
    @State public var username: String = ""
    @State public var isEditing = false
    
    var body: some View {
        VStack {
            
            //testing custom back button
//            NavigationLink(destination: Home()) {
//                    Text("Back")
//                        .font(Font.custom("Poppins-Regular", size: 14))
//                        .padding(.horizontal, 20)
//            }
//            .background(Color(#colorLiteral(red: 0.9853331447, green: 0.7925021052, blue: 0.3908675313, alpha: 1)))
//            .padding(.top, 60)
//            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
            
            //heading text
            EnterName_Text()
            
            // text field
            TextField( "User name (email address)", text: $username)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .border(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .padding(.horizontal, 40)
                .padding(.bottom, 100)
                .font(Font.custom("Poppins-Regular", size: 16))
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
            
            // nav button to next screen
            NavigationLink(destination: BreatheOne()) {
                    Text("Next")
                        .font(Font.custom("Poppins-Regular", size: 20))
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.9853331447, green: 0.7925021052, blue: 0.3908675313, alpha: 1)))
                        .cornerRadius(50)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 60)
            }
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
        //.navigationBarBackButtonHidden(true)
    }
}

// heading text
struct EnterName_Text: View {
    var body: some View {
        Spacer()
        Text("Enter Your Name")
            .font(Font.custom("Blueberry Regular", size: 40))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            .padding(.top, 75)
        Text("(Optional) - but why not!")
            .font(Font.custom("Poppins-Regular", size: 16))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
    }
}
