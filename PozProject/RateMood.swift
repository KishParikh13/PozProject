//
//  OnboardThree.swift
//  PozProject
//
//  Created by Kish Parikh on 2/4/21.
//

import SwiftUI

struct RateMood: View {
    @State private var speed = 50.0
//
//    enum Flavor: String, CaseIterable, Identifiable {
//        case chocolate
//        case vanilla
//        case strawberry
//        case emoji
//
//        var id: String { self.rawValue }
//    }
//
//    @State private var selectedFlavor = Flavor.emoji
    
    var body: some View {
        //OnboardThree
        
            VStack {

            RateMood_Text()

          //  ZStack {
//                //emoji Picker
//                Picker(selection: .constant(5), label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
//                    ForEach((0...10), id: \.self) {
//                        let codepoint = $0 + 0x1f600
//                        //let codepointString = String(format: "%02X", codepoint)
//                        let emoji = String(Character(UnicodeScalar(codepoint)!))
//
//                        Text("\(emoji)").tag(Flavor.emoji)
//                            .font(Font.custom("Blueberry Regular", size: 24))
//                            .padding(.bottom, -10)
//                    }
//                }
//                .clipped()
//                .scaleEffect(5)
//                .padding(.bottom, 150)
//            }
//            .frame(maxWidth: 10, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
//
//            Text("Selected flavor: \(selectedFlavor.rawValue)")
//
                
            //emoji Picker
                ZStack {
                    ZStack  {
                        if speed >= 90.0 {
                            Text("🤩")
                        } else if speed >= 80.0 && speed < 90.0 {
                            Text("😊")
                        }
                        else if speed >= 70.0 && speed < 80.0 {
                            Text("🙂")
                        }
                        else if speed >= 60.0 && speed < 70.0 {
                            Text("😬")
                        } else if speed >= 50.0 && speed < 60.0 {
                            Text("😐")
                        }
                        else if speed >= 40.0 && speed < 50.0 {
                            Text("😑")
                        }
                        else if speed >= 30.0 && speed < 40.0 {
                            Text("😒")
                        } else if speed >= 20.0 && speed < 30.0 {
                            Text("😓")
                        }
                        else if speed >= 10.0 && speed < 20.0 {
                            Text("😖")
                        }
                        else if speed <= 10.0 {
                            Text("💩")
                        }
                    }
                    .font(Font.custom("Blueberry Regular", size: 200))
                    .offset(x: 0, y: 0)
                    .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .global)
                        .onChanged { value in
                            let verticalAmount = value.translation.height as CGFloat
                            
                                speed -= (Double(verticalAmount))/100
                        })

                    Slider(
                        value: $speed,
                        in: 0...100
                    )
                    .rotationEffect(.degrees(-90))
                    .accentColor(Color(#colorLiteral(red: 0.8941222429, green: 0.8940448165, blue: 0.9026284814, alpha: 1)))
                    .offset(x: 150, y: 0)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                NavigationLink(destination: EnterThoughts()) {
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

struct RateMood_Previews: PreviewProvider {
    static var previews: some View {
        RateMood()
    }
}

struct RateMood_Text: View {
    var body: some View {
        Spacer()
        Text("Rate your mood")
            .font(Font.custom("Blueberry Regular", size: 40))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
            .padding(.top, 75)
        Text("There's NO wrong answer :)")
            .font(Font.custom("Poppins-Regular", size: 16))
            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
    }
}
