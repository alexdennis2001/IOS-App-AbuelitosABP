//
//  DrawingActView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 10/10/22.
//

import SwiftUI
import PencilKit

struct DrawingActView: View {
    @State var canvas = PKCanvasView()
    @State var isDraw = true
    @State var color : Color = .black
    @State var type : PKInkingTool.InkType = .pencil
    @State var colorPicker = false
    
    var body: some View {
        
        NavigationView{
            DrawingView(canvas: $canvas, isDraw: $isDraw, type: $type,color: $color)
                .navigationTitle("Dibujar")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(leading: Button(action: {
                    SaveImage()
                }, label: {
                    Image(systemName: "square.and.arrow.down")
                        .font(.title)
                }), trailing: HStack(spacing: 15){
                    Button(action: {
                        isDraw = false
                    }) {
                        Image(systemName: "pencil.slash")
                            .font(.title)
                    }
                    
                    Menu {
                        
                        Button(action: {
                            colorPicker.toggle()
                            
                        }) {
                            Label {
                                Text("Color")
                            } icon: {
                                Image(systemName: "eyedropper.full")
                            }
                        }
                        
                        Button(action: {
                            isDraw = true
                            type = .pencil
                        }) {
                            Label {
                                Text("Lápiz")
                            } icon: {
                                Image(systemName: "pencil")
                            }
                        }
                        
                        Button(action: {
                            isDraw = true
                            type = .pen
                        }) {
                            Label {
                                Text("Pluma")
                            } icon: {
                                Image(systemName: "pencil.tip")
                            }
                        }
                        
                        Button(action: {
                            isDraw = true
                            type = .marker
                        }) {
                            Label {
                                Text("Marcador")
                            } icon: {
                                Image(systemName: "highlighter")
                            }
                        }
                        
                        
                        
                        
                    } label: {
                        Image(systemName: "pencil.circle")
                            .font(.system(size: 24))
                        
                    }
                    
                })
                .sheet(isPresented: $colorPicker) {
                    ColorPicker("Escoge un color", selection: $color)
                        .padding()
                }
                
            
        }
    }
    
    func SaveImage(){
        let image = canvas.drawing.image(from: canvas.drawing.bounds, scale: 1)
        
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
    }
}

struct DrawingActView_Previews: PreviewProvider {
    static var previews: some View {
        DrawingActView()
    }
}

struct DrawingView: UIViewRepresentable {
    
    @Binding var canvas : PKCanvasView
    @Binding var isDraw : Bool
    @Binding var type : PKInkingTool.InkType
    @Binding var color : Color
    
    var ink : PKInkingTool{
        PKInkingTool(type, color: UIColor(color))
    }
    
    let eraser = PKEraserTool(.bitmap)
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvas.drawingPolicy = .anyInput
        canvas.tool = isDraw ? ink : eraser
        return canvas
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        uiView.tool = isDraw ? ink : eraser
    }
}
