import SwiftUI

//let dataSet = [
//    Entry(mood: "😊", thoughts: "Lorem", message: "message", date: "2/5/21"),
//]

struct EntriesListView: View {
//    var Entries = dataSet;
    
    @ObservedObject private var viewModel = EntriesViewModel()
    
    var body: some View {
        List(viewModel.entries) { Entry in
            VStack {
//                HStack {
//                    Text(Entry.mood)
//                        .font(Font.custom("Blueberry Regular", size: 50))
//                    Spacer()
//                    Text(Entry.date)
//                        .font(Font.custom("Poppins", size: 24))
//                        .padding(.bottom, 10)
//                }
//                .padding(.bottom, -20)
                Text(Entry.mood)
                    .font(Font.custom("Poppins", size: 18))
//                HStack {
//                    Text(Entry.message)
//                }
            }
            .padding(.bottom, 20)
            .onAppear() {
                self.viewModel.getData()
            }
        }
    }
}

struct EntriesListView_Previews: PreviewProvider {
    static var previews: some View {
        EntriesListView()
    }
}


