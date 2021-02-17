import SwiftUI

class Entry : Identifiable {
    var mood: String
//    var thoughts: String
//    var message: String
//    var date: String

    init(mood: String) {
        self.mood = mood
//        self.thoughts = thoughts //, thoughts: String, message: String, date: String
//        self.message = message
//        self.date = date
    }
}
