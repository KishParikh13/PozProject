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
            .frame(width: 400, height: 400)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
    }
    
}

struct BreatheOne_Previews: PreviewProvider {
    static var previews: some View {
        BreatheOne()
    }
}
