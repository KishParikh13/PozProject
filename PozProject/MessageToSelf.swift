//
//  MessageToSelf.swift
//  PozProject
//
//  Created by Kish Parikh on 2/9/21.
//

import SwiftUI

struct MessageToSelf: View {
    @State public var message: String = ""
    
    var body: some View {
        //OnboardTwo
        
        VStack {
            
            //heading text
            MessageToSelf_Text()
            
            //text field to be replaced with record button
            TextField( "What would you like to say?", text: $message)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .border(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .padding(.horizontal, 40)
                .padding(.bottom, 100)
                .font(Font.custom("Poppins-Regular", size: 16))
                .frame(maxWidth: .infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity)
                .multilineTextAlignment(.center)
            
            // nav button to next screen
            NavigationLink(destination: RateMood()) {
                Text("Home")
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
        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
    }
}

struct MessageToSelf_Previews: PreviewProvider {
    static var previews: some View {
        MessageToSelf()
    }
}

// heading text
struct MessageToSelf_Text: View {
    var body: some View {
        Spacer()
        Text("Send to Future Self")
            .font(Font.custom("Blueberry Regular", size: 32))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            .padding(.top, 75)
            .padding(.horizontal, 5)
        Text("Some text here")
            .font(Font.custom("Poppins-Regular", size: 16))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
    }
}
