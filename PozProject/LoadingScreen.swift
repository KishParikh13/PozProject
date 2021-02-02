//
//  LoadingScreen.swift
//  PozProject
//
//  Created by Kish Parikh on 2/2/21.
//

import SwiftUI

struct LoadingScreen: View {
    var body: some View {
        //OnboardOne
        VStack {
            
            //next button
            NextButton()
            
            //welcome text
            Welcome_Text()
            
            //images
//            Images()
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            
            
            //nav indicators
            NavIndicators()
            
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color(#colorLiteral(red: 1, green: 0.8663642798, blue: 0.7767596553, alpha: 1)))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoadingScreen()
    }
}

struct NextButton: View {
    var body: some View {
        HStack() {
            Spacer()
            // Button(action: UIAction) {
            Text("Next")
                .font(Font.custom("Poppins-Regular", size: 14))
                .frame(width: 80, height: 30)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .cornerRadius(50)
            // }
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
        }
        .padding(.horizontal, 20)
        .padding(.top, 60)
    }
}

struct Welcome_Text: View {
    var body: some View {
        Spacer()
        Text("Welcome to Poz")
            .font(Font.custom("Blueberry Regular", size: 40))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            .padding(.bottom, 2)
        Text("Take a second to see how you feel")
            .font(Font.custom("Poppins-Regular", size: 16))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            .padding(.bottom, 60)
        Spacer()
    }
}

//struct Images: View {
//    var body: some View {
//        ZStack {
//            Image("1295862-200")
//                .frame(width: 200, height: 200)
//            Image("583034-201").resizable()
//                .frame(width: 50, height: 50)
//                .offset(x: -100, y: -180)
//            Image("2508765-202").resizable()
//                .frame(width: 60, height: 60)
//                .offset(x: 100, y: 180)
//        }
//    }
//}



struct NavIndicators: View {
    var body: some View {
        HStack(spacing: 5) {
            Circle()
                .frame(maxWidth: 10, maxHeight: 10)
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            Circle()
                .frame(maxWidth: 10, maxHeight: 10)
            Circle()
                .frame(maxWidth: 10, maxHeight: 10)
        }
        .foregroundColor(Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)))
        .frame(width: 80, height: 30)
        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
        .padding(.bottom, 20)
    }
}

