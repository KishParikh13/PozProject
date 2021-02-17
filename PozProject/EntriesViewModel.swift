import SwiftUI
import Foundation
import FirebaseFirestore

class EntriesViewModel: ObservableObject {
    @Published var entries = [Entry]()
    
    private var db = Firestore.firestore()
    
    func getData() {
        db.collection("Users").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("Error")
                return
            }
            
            documents.map { (queryDocumentSnapshot) -> Entry in
                let data = queryDocumentSnapshot.data()
                
                let mood = data["Name"] as? String ?? ""
//                let message = data["Message"] as? String ?? ""
//                let thoughts = data["Thoughts"] as? String ?? ""
//                let date = data["Timestamp"] as? String ?? ""
                
                return Entry(mood: mood)
            }
        }
    }
}
