//
//  BreatheOne.swift
//  PozProject
//
//  Created by Kish Parikh on 2/9/21.
//

import SwiftUI

struct BreatheOne: View {
    var body: some View {
        VStack {
            LottieView()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            //.frame(width: 400, height: 400)
            
            NavigationLink(destination: RateMood()) {
                Text("Next")
                    .font(Font.custom("Poppins-Regular", size: 20))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    .frame(width: 200, height: 50)
                    .background(Color(#colorLiteral(red: 0.9843137255, green: 0.7921568627, blue: 0.3921568627, alpha: 1)))
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

struct BreatheOne_Previews: PreviewProvider {
    static var previews: some View {
        BreatheOne()
    }
}
