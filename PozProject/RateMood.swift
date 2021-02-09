//
//  OnboardThree.swift
//  PozProject
//
//  Created by Kish Parikh on 2/4/21.
//

import SwiftUI

struct RateMood: View {
    @State private var showingAlert = false
    
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate
        case vanilla
        case strawberry

        var id: String { self.rawValue }
    }
    
    @State private var selectedFlavor = Flavor.chocolate
    
    var body: some View {
        //OnboardThree
        VStack {
            
            
            //welcome text
            RateMood_Text()

            //emoji Picker
            Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                ForEach((0...79), id: \.self) {
                    let codepoint = $0 + 0x1f600
                    //let codepointString = String(format: "%02X", codepoint)
                    let emoji = String(Character(UnicodeScalar(codepoint)!))
                
                    Text("\(emoji)").tag(Flavor.vanilla)
                        .font(Font.custom("Blueberry Regular", size: 62))
                }
            }
            .clipped()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .padding(.bottom, 100)
            
            Text("Selected flavor: \(selectedFlavor.rawValue)")
            
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
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
    }
}

struct RateMood_Text: View {
    var body: some View {
        Spacer()
        Text("Rate your mood")
            .font(Font.custom("Blueberry Regular", size: 40))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            .padding(.top, 60)
        Text("There's NO wrong answer :)")
            .font(Font.custom("Poppins-Regular", size: 16))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
    }
}
