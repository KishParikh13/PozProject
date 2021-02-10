//
//  LottieView.swift
//  PozProject
//
//  Created by Kish Parikh on 2/9/21.
//
//lottie file graciosuly taken from https://lottiefiles.com/18409-breathe#



import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    typealias UIViewType = UIView
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)
        
        let animationView = AnimationView()
        let animation = Animation.named("breathe")
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()

        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
          animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
          animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
        ])
        
      return view
    }
      
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) { }
  }

//struct LottieView_Previews: PreviewProvider {
//    static var previews: some View {
//        LottieView(filename: "breathe")
//    }
//}
