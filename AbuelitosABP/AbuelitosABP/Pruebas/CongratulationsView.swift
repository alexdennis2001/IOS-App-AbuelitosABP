//
//  CongratulationsView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 03/10/22.
//

import SwiftUI

struct CongratulationsView: View {
    
    @State var wish = false
    @State var finishWish = false
    @AppStorage("Page") var currentPage: Page?
    @AppStorage("Menu") var tabSelection: Int?
    
    let azulClaro = UIColor(red: 0.28, green: 0.71, blue: 1.00, alpha: 1.00)
    
    var body: some View {
        ZStack(alignment: .center){
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack(spacing: 10){
                Text("Felicidades, haz terminado la prueba!")
                    .font(.system(size: 30, weight: .semibold))
                    .frame(width: 400)
                
                
                
                Button(action: doAnimation, label: {
                    Image("happy-couple")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 480)
                    
                })
                .disabled(wish)
                
                
                
                Button {
                    tabSelection = 2
                    currentPage = .menu
                } label: {
                    Text("Continuar")
                        .kerning(2)
                        .padding(.vertical, 12)
                        .padding(.horizontal, 50)
                        .background(Color(azulClaro))
                        .clipShape(Capsule())
                        .foregroundColor(.black)
                        .font(.system(size: 24, weight: .medium))
                }

            }
            
            EmitterView()
                .scaleEffect(wish ? 1 : 0, anchor: .top)
                .opacity(wish && !finishWish ? 1 : 0)
                .offset(y: wish ? 0 : getRect().height / 2)
                .ignoresSafeArea()
        }
        .onAppear{
            self.doAnimation()
        }
    }
    
    func doAnimation(){
        withAnimation(.spring()){
            wish = true
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            withAnimation(.easeInOut(duration: 1.5)){
                finishWish = true
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.4) {
                finishWish = false
                wish = false
            }
        }
    }
}

struct CongratulationsView_Previews: PreviewProvider {
    static var previews: some View {
        CongratulationsView()
    }
}

func getRect()->CGRect{
    return UIScreen.main.bounds
}

struct EmitterView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIView {
        
        let view = UIView()
        view.backgroundColor = .clear
        let emitterLayer = CAEmitterLayer()
        emitterLayer.emitterShape = .line
        emitterLayer.emitterCells = createEmiterCells()
        
        emitterLayer.emitterSize = CGSize(width: getRect().width, height: 0.1)
        emitterLayer.emitterPosition = CGPoint(x: getRect().width / 2, y: 0)
        
        view.layer.addSublayer(emitterLayer)
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func createEmiterCells()->[CAEmitterCell]{
        var emitterCells: [CAEmitterCell] = []
        
        for index in 1...12 {
            let cell = CAEmitterCell()
            
            cell.contents = UIImage(named: getImage(index: index))?.cgImage
            cell.color = getColor().cgColor
            cell.birthRate = 4.5
            cell.lifetime = 20
            cell.velocity = 120
            cell.scale = 0.2
            cell.scaleRange = 0.3
            cell.emissionLongitude = .pi
            cell.emissionRange = 0.5
            cell.spin = 1
            cell.spinRange = 1
            
            cell.yAcceleration = 70
            
            emitterCells.append(cell)
        }
        
        return emitterCells
    }
    
    func getColor()->UIColor{
        let colors : [UIColor] = [.systemPink, .systemGreen, .systemRed, .systemOrange, .systemPurple]
        
        return colors.randomElement()!
    }
    
    func getImage(index: Int)->String{
        if index < 4 {
            return "square"
        }
        else if index > 5 && index <= 8 {
            return "circle"
        }
        else {
            return "triangle"
        }
    }
    
}


