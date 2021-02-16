import SwiftUI
import SwiftUICharts

struct Dashboard: View {
    
    @State var index = 1
    @State var offset : CGFloat = 0
    
    var body: some View {
        VStack {
            appTopBar(index: self.$index, offset: self.$offset)
            
            if (index == 0) {
                Entries()
            } else if (index == 1) {
                Stats()
            }
       }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}

struct appTopBar : View {
    
    @Binding var index : Int
    @Binding var offset : CGFloat
    
    var body : some View {
        
        HStack (spacing: 16){
            Button(action: {self.index = 0}) {
                VStack (spacing: 8) {
                    HStack (spacing: 8){
//                        Image("poz").resizable()
//                            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                            .opacity(self.index == 0 ? 1 : 0.3)
                        Text("Entries")
                            .font(Font.custom("Poppins", size: 16))
                            .foregroundColor(Color.black)
                            .opacity(self.index == 0 ? 1 : 0.3)
                    }
                    Capsule()
                        .fill(Color.black)
                        .opacity(self.index == 0 ? 1 : 0)
                        .frame(height: 4, alignment: .center)
                        .padding(.top, 5)
                        .padding(.bottom, 5)
                }
            }
            Button(action: {self.index = 1}) {
                VStack (spacing: 8) {
                    HStack (spacing: 8){
//                        Image("statsIcon").resizable()
//                            .frame(width: 40, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                            .opacity(self.index == 1 ? 1 : 0.3)
                        Text("Stats")
                            .font(Font.custom("Poppins", size: 16))
                            .foregroundColor(Color.black)
                            .opacity(self.index == 1 ? 1 : 0.3)
                    }
                    Capsule()
                        .fill(Color.black)
                        .opacity(self.index == 1 ? 1 : 0)
                        .frame(height: 4, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.top, 5)
                        .padding(.bottom, 5)
                }
            }
        }
        .padding(.top, 60)
        .padding(.horizontal)
        .padding(.bottom, 0)
        .background(Color(#colorLiteral(red: 0.9853331447, green: 0.7925021052, blue: 0.3908675313, alpha: 1)))
    }
}

struct Entries : View {
    
    var body : some View {
        List() {
            VStack {
                HStack {
                    Text("😖")
                        .font(Font.custom("Blueberry Regular", size: 50))
                    Spacer()
                    Text("2/12/21")
                        .font(Font.custom("Poppins", size: 24))
                        .padding(.bottom, 10)
                }
                .padding(.bottom, -20)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .font(Font.custom("Poppins", size: 18))
                HStack {
                    Image("voiceMemo").resizable()
                        .frame(width: 300, height: 45, alignment: .center)
                        .colorInvert()
                    Image("play").resizable()
                        .frame(width: 45, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .colorInvert()
                        .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .cornerRadius(100)
                }
            }
            .padding(.bottom, 20)
            VStack {
                HStack {
                    Text("😒")
                        .font(Font.custom("Blueberry Regular", size: 50))
                    Spacer()
                    Text("2/11/21")
                        .font(Font.custom("Poppins", size: 24))
                        .padding(.bottom, 10)
                }
                .padding(.bottom, -20)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .font(Font.custom("Poppins", size: 18))
                HStack {
                    Image("voiceMemo").resizable()
                        .frame(width: 300, height: 45, alignment: .center)
                        .colorInvert()
                    Image("play").resizable()
                        .frame(width: 45, height: 45, alignment: .center)
                        .colorInvert()
                        .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .cornerRadius(100)
                }
            }
            .padding(.bottom, 20)
            VStack {
                HStack {
                    Text("😬")
                        .font(Font.custom("Blueberry Regular", size: 50))
                    Spacer()
                    Text("2/10/21")
                        .font(Font.custom("Poppins", size: 24))
                        .padding(.bottom, 10)
                }
                .padding(.bottom, -20)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .font(Font.custom("Poppins", size: 18))
                HStack {
                    Image("voiceMemo").resizable()
                        .frame(width: 300, height: 45, alignment: .center)
                        .colorInvert()
                    Image("play").resizable()
                        .frame(width: 45, height: 45, alignment: .center)
                        .colorInvert()
                        .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .cornerRadius(100)
                }
            }
            .padding(.bottom, 20)
        }
    }
}

struct Stats : View {
    var body: some View {
        VStack (spacing: 20){
            HStack {
                BarChartView(data: ChartData(values: [("2018 Q4",63150), ("2019 Q1",50900), ("2019 Q2",77550), ("2019 Q3",79600), ("2019 Q4",92550)]), title: "Growth", legend: "Weekly") // legend is optional
                MultiLineChartView(data: [([8,32,11,23,40,28], GradientColors.green), ([90,99,78,111,70,60,77], GradientColors.purple), ([34,56,72,38,43,100,50], GradientColors.orngPink)], title: "Mood")
                
            }
            LineChartView(data: [8,23,54,32,12,37,7,23,43], title: "Usage", form: ChartForm.large) // legend is optional
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
    }
}
