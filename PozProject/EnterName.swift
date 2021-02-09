//
//  OnboardTwo.swift
//  PozProject
//
//  Created by Kish Parikh on 2/4/21.
//

import SwiftUI



struct EnterName: View {
    @State public var username: String = ""
    @State public var isEditing = false
    
    @State private var showingAlert = false
    
    var body: some View {
        //OnboardTwo
        VStack {
            
            //welcome text
            EnterName_Text()
            
            //images
//            Images()
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            TextField( "User name (email address)", text: $username)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .border(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .padding(.horizontal, 40)
                .padding(.bottom, 100)
                .font(Font.custom("Poppins-Regular", size: 16))
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
            
            Button(action: {self.showingAlert = true}) {
                        Text("Next")
                            .font(Font.custom("Poppins-Regular", size: 20))
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            }
                .frame(width: 200, height: 50)
                .background(Color(#colorLiteral(red: 0.9853331447, green: 0.7925021052, blue: 0.3908675313, alpha: 1)))
                .cornerRadius(50)
                .padding(.horizontal, 20)
                .padding(.bottom, 60)
            
            .alert(isPresented:$showingAlert) {
                Alert(title: Text("Are you sure you want to delete this?"), message: Text("There is no undo"), primaryButton: .destructive(Text("Delete")) {
                        print("Deleting...")
                }, secondaryButton: .cancel())
            }

            
            //next button
           // NextButton()
            
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
    }
}

struct EnterName_Text: View {
    var body: some View {
        Spacer()
        Text("Enter Your Name")
            .font(Font.custom("Blueberry Regular", size: 40))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            .padding(.top, 60)
        Text("(Optional) - but why not!")
            .font(Font.custom("Poppins-Regular", size: 16))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
    }
}
