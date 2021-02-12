//
//  ContentView.swift
//  PozProject
//
//  Created by Kish Parikh on 2/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            NavigationView {
            
                  Home()
             //     EnterName()
             //     BreatheOne()
             //     RateMood()
             //     EnterThoughts()
             //     MessageToSelf()
            }
     
//next steps:
    // add some kind of message/prescription at the end of the flow
    // face scan for emotions?
    //dashboard
            //summary of previous input
            //daily reprot
    //connect to therapist feature
    // fix/remove poop emoji
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
