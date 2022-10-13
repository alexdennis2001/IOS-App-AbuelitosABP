//
//  ActMovimientoView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 11/10/22.
//

import SwiftUI
import WebKit

struct ActMovimientoView: View {
    
    @AppStorage("Page") var currentPage: Page?
    
    static let videosList = ["Nl4Ccu18Na8","0di0PVLpX1U","RSEFIA1ZUTY","SrltH0sg0bQ","SrltH0sg0bQ","rQq_5aCct34","Mc8I8F_0T8U","XIU3xE3T5H4"]
    
    @State var randomVid = Self.videosList.randomElement()!
    
    var body: some View {
        ZStack(alignment: .top) {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack{
                Text("Empieza tu actividad!")
                    .font(.system(size: 28, weight: .semibold))
                    .padding(.bottom, 20)
                
                VStack{
                    Text("Actividad:")
                        .font(.system(size: 24, weight: .medium))
                        .offset(y: 10)
                    
                    Text("Sigue las indicaciones del siguiente video de la activación fisica!")
                        .font(.system(size: 20, weight: .light))
                        .frame(width: 320, height: 100,alignment: .top)
                        .multilineTextAlignment(.center)
                }
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.white)
                        .frame(width: 350, height: 150)
                )
                .frame(width: 350, height: 150)
                .padding(.bottom, 20)
                
                
                VStack{
                    VideoView(videoID: randomVid)
                        .frame(height: 350)
                        .cornerRadius(12)
                        .padding(.horizontal, 10)
                        .padding(.bottom, 30)
                    
                    Button(action: {
                        randomVid = Self.videosList.randomElement()!
                    }) {
                        Text("Siguiente")
                            .padding()
                            .background(
                                Capsule()
                                    .frame(width: 150)
                                    .foregroundColor(Color("azulClaroButton"))
                            )
                            .foregroundColor(.black)
                            .tint(.white)
                            .font(.system(size: 24, weight: .medium))
                    }
                    
                    
                    
                }
                
                
                
                
                
            }
            .padding(.bottom, 100)
            
        }
    }
}

struct ActMovimientoView_Previews: PreviewProvider {
    static var previews: some View {
        ActMovimientoView()
    }
}

struct VideoView: UIViewRepresentable {
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)") else {return}
        
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}
