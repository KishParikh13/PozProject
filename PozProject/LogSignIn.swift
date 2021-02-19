import SwiftUI

struct LogSignIn: View {
    
    var body: some View {
        VStack {

            Spacer()
            
            LogIn()
            
            Spacer()
            
        }
        //.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
           // chooseActionMenu(index: self.$index, offset: self.$offset
    }
}


struct LogSignIn_Previews: PreviewProvider {
    static var previews: some View {
        LogSignIn()
    }
}

struct chooseActionMenu : View {
    
    @Binding var index : Int
    @Binding var offset : CGFloat
    
    var body : some View {
        
        VStack {
            HStack {
                Image("poz").resizable()
                  //  .padding(.top,-90)
                    .frame(width: 80, height: 80)
                Text("  Poz")
                    .font(Font.custom("Blueberry", size: 42))
            }
            Text("take a moment for yourself")
                .font(Font.custom("Poppins", size: 17))
                .padding(.bottom, 40)
            HStack (spacing: 16) {
                Button(action: {self.index = 0}) {
                    VStack (spacing: 8) {
                        HStack (spacing: 8) {
                            Text("Sign In")
                                .font(Font.custom("Poppins", size: 16))
                                .foregroundColor(Color.black)
                                .opacity(self.index == 0 ? 1 : 0.3)
                        }
                        Capsule()
                            .fill(Color.black)
                            .opacity(self.index == 0 ? 1 : 0)
                            .frame(height: 4, alignment: .center)
                            .padding(.top, 5)
                            .padding(.bottom, 5)
                    }
                }
                Button(action: {self.index = 1}) {
                    VStack (spacing: 8) {
                        HStack (spacing: 8) {
                            Text("Sign Up")
                                .font(Font.custom("Poppins", size: 16))
                                .foregroundColor(Color.black)
                                .opacity(self.index == 1 ? 1 : 0.3)
                        }
                        Capsule()
                            .fill(Color.black)
                            .opacity(self.index == 1 ? 1 : 0)
                            .frame(height: 4, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(.top, 5)
                            .padding(.bottom, 5)
                    }
                }
            }
        }
        .padding(.top, 60)
        .padding(.horizontal)
        .padding(.bottom, 0)
        .background(Color(#colorLiteral(red: 0.9853331447, green: 0.7925021052, blue: 0.3908675313, alpha: 1)))
    }
}

struct SignUp: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isEditing = false
    
    var body: some View {
        VStack () {
                HStack {
                    Text("username")
                        .font(Font.custom("Poppins", size: 20))
                    Spacer()
                }
                .padding(.horizontal, 22)
                .padding(.bottom,  -2)
                
                TextField("username", text: $username)
                    .font(Font.custom("Poppins", size: 16))
                    .foregroundColor(.black)
                    .frame(width: 315, height: 20)
                    .padding()
                    .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.09803921569)))
            }
            .padding()
            .padding(.bottom, -30)
            
            VStack {
                HStack {
                    Text("password")
                        .font(Font.custom("Poppins", size: 20))
                    Spacer()
                }
                .padding(.horizontal, 22)
                .padding(.bottom,  -2)

                TextField("password", text: $username)
                    .font(Font.custom("Poppins", size: 16))
                    .foregroundColor(.black)
                    .frame(width: 315, height: 20)
                    .padding()
                    .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.09803921569)))
            }
            .padding()
        
        HStack {
            Spacer()
            Button(action: {}) {
                Text("forgot username or password?")
            }
        }
        .padding(.top, -15)
        .padding(.horizontal, 25)
        .padding(.bottom, 25)

    
        Button(action: {}) {
            Text("Create Account")
                .font(Font.custom("Poppins-Regular", size: 20))
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                .frame(width: 220, height: 50)
                .background(Color(#colorLiteral(red: 0.9853331447, green: 0.7925021052, blue: 0.3908675313, alpha: 1)))
                .cornerRadius(50)
                .padding(.horizontal, 20)
                .padding(.bottom, 60)
        }
            
    }
}

struct SignIn: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isEditing = false
    
    var body: some View {
        VStack () {
                HStack {
                    Text("username")
                        .font(Font.custom("Poppins", size: 20))
                    Spacer()
                }
                .padding(.horizontal, 22)
                .padding(.bottom,  -2)
                
                TextField("username", text: $username)
                    .font(Font.custom("Poppins", size: 16))
                    .foregroundColor(.black)
                    .frame(width: 315, height: 20)
                    .padding()
                    .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.09803921569)))
            }
            .padding()
            .padding(.bottom, -30)
            
            VStack {
                HStack {
                    Text("password")
                        .font(Font.custom("Poppins", size: 20))
                    Spacer()
                }
                .padding(.horizontal, 22)
                .padding(.bottom,  -2)

                TextField("password", text: $username)
                    .font(Font.custom("Poppins", size: 16))
                    .foregroundColor(.black)
                    .frame(width: 315, height: 20)
                    .padding()
                    .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.09803921569)))
            }
            .padding()
        
        HStack {
            Spacer()
            Button(action: {}) {
                Text("forgot username or password?")
            }
        }
        .padding(.top, -15)
        .padding(.horizontal, 25)
        .padding(.bottom, 25)

    
        Button(action: {}) {
            Text("Sign In")
                .font(Font.custom("Poppins-Regular", size: 20))
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                .frame(width: 220, height: 50)
                .background(Color(#colorLiteral(red: 0.9853331447, green: 0.7925021052, blue: 0.3908675313, alpha: 1)))
                .cornerRadius(50)
                .padding(.horizontal, 20)
                .padding(.bottom, 60)
        }
            
    }
}

struct LogIn : View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isEditing = false
    @State private var nameIn = 0
    
    
    var body : some View {
        VStack () {
            if (nameIn != 2) {
                HStack {
                    Text("full name")
                        .font(Font.custom("Poppins", size: 20))
                    Spacer()
                }
                .padding(.horizontal, 22)
                .padding(.bottom,  -2)
                
                TextField("first and last name", text: $username)
                    .font(Font.custom("Poppins", size: 16))
                    .foregroundColor(.black)
                    .frame(width: 315, height: 20)
                    .padding()
                    .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.09803921569)))
                
                if (nameIn == 0) {
                    Button(action: {nameIn = 1}) {
                        Text("Enter")
                            .font(Font.custom("Poppins", size: 16))
                            .foregroundColor(Color.black)
                           // .opacity(self.index == 1 ? 1 : 0.3)
                    }
                    .padding(.top,  10)
                }
                
                if (nameIn == 1) {
                    HStack {
                        Text("password")
                            .font(Font.custom("Poppins", size: 20))
                        Spacer()
                    }
                    .padding(.horizontal, 22)
                    .padding(.bottom,  -2)
                    
                    TextField("password", text: $username)
                        .font(Font.custom("Poppins", size: 16))
                        .foregroundColor(.black)
                        .frame(width: 315, height: 20)
                        .padding()
                        .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.09803921569)))
                    
                    Button(action: {nameIn = 2}) {
                        Text("Yo")
                            
                            .font(Font.custom("Poppins", size: 16))
                            .foregroundColor(Color.black)
                           // .opacity(self.index == 1 ? 1 : 0.3)
                    }
                    .padding(.top,  10)
                }
            } else if (nameIn == 2) {
                Text("Success!")
            }
            
        }
    }
}
