//
//  OnboardThree.swift
//  PozProject
//
//  Created by Kish Parikh on 2/4/21.
//

import SwiftUI

struct OnboardThree: View {
    var body: some View {
        //OnboardThree
        VStack {
            
            //next button
            NextButton()
           
            //images
            Images()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            
            //welcome text
            OnboardThree_Text()
            

            
            //nav indicators
            NavIndicators()
            
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color(#colorLiteral(red: 1, green: 0.8663642798, blue: 0.7767596553, alpha: 1)))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
    }
}

struct OnboardThree_Text: View {
    var body: some View {
        Spacer()
        Text("Take a second to relax")
            .font(Font.custom("Blueberry Regular", size: 40))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            .padding(.bottom, 2)
        Text("Use this and that to document")
            .font(Font.custom("Poppins-Regular", size: 16))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            .padding(.bottom, 60)
        Spacer()
    }
}
