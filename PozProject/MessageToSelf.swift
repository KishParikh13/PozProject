//
//  MessageToSelf.swift
//  PozProject
//
//  Created by Kish Parikh on 2/9/21.
//

import SwiftUI

struct MessageToSelf: View {

//    enum Flavor: String, CaseIterable, Identifiable {
//        case chocolate
//        case vanilla
//        case strawberry
//
//        var id: String { self.rawValue }
//    }
//    
//    @State private var selectedFlavor = Flavor.chocolate
    var body: some View {
        //OnboardTwo
        VStack {
            
            //welcome text
            MessageToSelf_Text()
            
            //next button
           // NextButton()
            
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
    }
}

struct MessageToSelf_Text: View {
    var body: some View {
        Spacer()
        Text("Send to Future Self")
            .font(Font.custom("Blueberry Regular", size: 32))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            .padding(.top, 60)
            .padding(.horizontal, 5)
        Text("Some text here")
            .font(Font.custom("Poppins-Regular", size: 16))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
    }
}
