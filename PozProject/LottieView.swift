import SwiftUI
import Lottie

//lottie file graciosuly taken from https://lottiefiles.com/47367-breath-in-breath-out-animation

//implementation taken from https://stackoverflow.com/questions/62584516/swiftui-how-to-make-lottie-animation-loop and https://medium.com/@simibac93/swiftui-with-lottie-33b0841f8ab0

struct LottieView: UIViewRepresentable {
    typealias UIViewType = UIView
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)
        
        let animationView = AnimationView()
        let animation = Animation.named("breatheTwo")
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

