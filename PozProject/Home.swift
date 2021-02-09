//
//  OnboardOne.swift
//  PozProject
//
//  Created by Kish Parikh on 2/2/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        //OnboardOne
        VStack {
            
           
            
            //images
            Images()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            //welcome text
            Welcome_Text()
            
            //next button
            GetStartedButton()
            
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
    }
}

struct GetStartedButton: View {
    var body: some View {
        HStack() {
            // Button(action: UIAction) {
            Text("Get Started")
                .font(Font.custom("Poppins-Regular", size: 20))
                .frame(width: 200, height: 50)
                .background(Color(#colorLiteral(red: 0.9853331447, green: 0.7925021052, blue: 0.3908675313, alpha: 1)))
                .cornerRadius(50)
            // }
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 60)
    }
}

struct Welcome_Text: View {
    var body: some View {
        Spacer()
        Text("Welcome to Poz")
            .font(Font.custom("Blueberry Regular", size: 48))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            .padding(.bottom, 2)
        Text("Take a moment for yourself")
            .font(Font.custom("Poppins-Regular", size: 20))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            .padding(.bottom, 60)
        Spacer()
    }
}


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
        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .frame(width: 80, height: 30)
        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
        .padding(.bottom, 20)
    }
}

struct Images: View {
    var body: some View {
        ZStack {
            Image("Meditation-cuate").resizable()
                .frame(width: 500, height: 500)
        }
    }
}
