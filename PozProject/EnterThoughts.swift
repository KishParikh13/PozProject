//
//  EnterThoughts.swift
//  PozProject
//
//  Created by Kish Parikh on 2/9/21.
//

import SwiftUI

struct EnterThoughts: View {
    @State public var thoughts: String = ""
    @State public var isEditing = false
    
    var body: some View {
        //OnboardTwo
        VStack {
            
            //welcome text
            EnterThoughts_Text()
            
            //images
//            Images()
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            TextField( "Type your thoughts here...", text: $thoughts)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .border(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .padding(.horizontal, 40)
                .padding(.bottom, 100)
                .font(Font.custom("Poppins-Regular", size: 16))
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)

            NavigationLink(destination: MessageToSelf()) {
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
        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
    }
}

struct EnterThoughts_Text: View {
    var body: some View {
        Spacer()
        Text("What's on your mind?")
            .font(Font.custom("Blueberry Regular", size: 32))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            .padding(.top, 75)
        Text("Just begin typing")
            .font(Font.custom("Poppins-Regular", size: 16))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
    }
}
