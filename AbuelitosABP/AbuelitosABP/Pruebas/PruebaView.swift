//
//  PruebaView.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 24/09/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON

struct PruebaView: View {
    @AppStorage("IdPrueba") var idPrueba: Int?
    @AppStorage("Categoria") var categoriaPrueba: String?
    @AppStorage("ScorePrueba1") var scorePrueba1: Double?
    @AppStorage("ScorePrueba2") var scorePrueba2: Double?
    @AppStorage("ScorePrueba3") var scorePrueba3: Double?
    @AppStorage("ScorePrueba4") var scorePrueba4: Double?
    @AppStorage("ScorePrueba5") var scorePrueba5: Double?
    @AppStorage("ScorePrueba6") var scorePrueba6: Double?
    let greyButton = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.00)
    @State var rango = 0.0
    @State var aprovado = 0.0
    @State var questionNumber = 0
    @AppStorage("Page") var currentPage: Page?
    var prueba: Prueba
    @State var score = 0.0
    
    @State var pregRespuesta = [TestPreguntaRespuesta]()
    
    var body: some View {
        
        ZStack(alignment: .top) {
            Color("BackgroundColor")
                .ignoresSafeArea()
            
            VStack{
                Text("Prueba:")
                    .font(.system(size: 28, weight: .semibold))
                    .padding(.bottom, 1)
                
                Text(prueba.nombre)
                    .font(.system(size: 20, weight: .medium))
                
                VStack{
                    Text("Instrucciones:")
                        .font(.system(size: 24, weight: .medium))
                    
                    
                    VStack(alignment: .leading){
                        Text("1. Conteste las siguientes preguntas.")
                            .padding(.bottom, 5)
                        
                        Text("2. Dar click en su respuesta hasta completar el cuestionario.")
                        
                    }
                    .frame(width: 300, height: 80)
                    .multilineTextAlignment(.leading)
                }
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.white)
                        .frame(width: 350, height: 150)
                )
                .frame(width: 350, height: 150)
                .padding(.bottom, 10)
                
                
                VStack{
                    Text(prueba.preg_resp[questionNumber].pregunta)
                        .font(.system(size: 24, weight: .medium))
                        .minimumScaleFactor(0.1)
                        .frame(width: 340, height: 80)
                        .multilineTextAlignment(.center)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        
                        
                        ForEach(0 ..< prueba.preg_resp[questionNumber].respuesta.count, id: \.self){ respuesta in
                            Button(action:{
                                score += prueba.preg_resp[questionNumber].respuesta[respuesta].score
                                prueba.scoreFinal = score
                                if prueba.preg_resp.count > questionNumber + 1 {
                                    pregRespuesta.append(TestPreguntaRespuesta(question_id: prueba.preg_resp[questionNumber].id, answer: prueba.preg_resp[questionNumber].respuesta[respuesta].score))
                                    questionNumber += 1
                                } else {
                                    aprovado = Double(prueba.rangosScore[0].count) / 2.0
                                    aprovado = aprovado.rounded(.towardZero)
                                    for i in 0...prueba.rangosScore[0].count-1{
                                        if(i < prueba.rangosScore[0].count-1){
                                            if(prueba.scoreFinal >= prueba.rangosScore[0][i] && prueba.scoreFinal < prueba.rangosScore[0][i+1]){
                                                rango = Double(i+1)
                                                categoriaPrueba = prueba.categorias[i];
                                            }
                                        }
                                    }
                                    idPrueba = prueba.id
                                    
                                    
                                    
                                    if(prueba.id == 1){
                                        postMethod(test_id: idPrueba!, score: prueba.scoreFinal, questions_answers: pregRespuesta)
                                        scorePrueba1 = Double(round(10 * prueba.scoreFinal)/10)
                                    }
                                    else if(prueba.id == 2){
                                        scorePrueba2 = Double(round(10 * prueba.scoreFinal)/10)
                                    }
                                    else if(prueba.id == 3){
                                        scorePrueba3 = Double(round(10 * prueba.scoreFinal)/10)
                                    }
                                    else if(prueba.id == 4){
                                        scorePrueba4 = Double(round(10 * prueba.scoreFinal)/10)
                                    }
                                    else if(prueba.id == 5){
                                        scorePrueba5 = Double(round(10 * prueba.scoreFinal)/10)
                                    }
                                    else if(prueba.id == 6){
                                        scorePrueba6 = Double(round(10 * prueba.scoreFinal)/10)
                                    }
                                    
                                    
                                    if(prueba.orden == 1){
                                        if(rango >= aprovado){
                                            currentPage = .congrats
                                        }
                                        else{
                                            currentPage = .keepUp
                                        }
                                    }
                                    if(prueba.orden == 0){
                                        if(rango <= aprovado){
//                                            
                                            currentPage = .congrats
                                        }
                                        else{
                                            currentPage = .keepUp
                                        }
                                    }
                                }
                                
                            },label: {
                                Text(prueba.preg_resp[questionNumber].respuesta[respuesta].title)
                                    .font(.system(size: 24, weight: .medium))
                                    .minimumScaleFactor(0.1)
                                    .frame(width: 280, height: 70)
                                    .foregroundColor(.black)
                                
                            })
                            .background(
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(Color(greyButton))
                                    .frame(width: 300, height: 80)
                                    .opacity(0.5)
                            )
                            .frame(width: 300, height: 80)
                            
                        }
                    }
                    
                    
                }
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.white)
                        .frame(width: 350, height: 460)
                        .shadow(color: .black, radius: 5)
                    
                )
                .frame(width: 350, height: 460)
                
                
            }
            
            .padding(.bottom, 70)
            
        }
    }
    
    func postMethod(test_id: Int, score: Double, questions_answers: [TestPreguntaRespuesta]) {
        
        let token = UserDefaults.standard.string(forKey: "jsonwebtoken")
        
        let question_answers: Parameters = [
            "question_id": questions_answers[0].question_id,
            "answer": questions_answers[0].answer
        ]
        let question_answers2: Parameters = [
            "question_id": questions_answers[1].question_id,
            "answer": questions_answers[1].answer
        ]
        let question_answers3: Parameters = [
            "question_id": questions_answers[2].question_id,
            "answer": questions_answers[2].answer
        ]
        let question_answers4: Parameters = [
            "question_id": questions_answers[3].question_id,
            "answer": questions_answers[3].answer
        ]
        let question_answers5: Parameters = [
            "question_id": questions_answers[4].question_id,
            "answer": questions_answers[4].answer
        ]
//        let question_answers6: Parameters = [
//            "question_id": questions_answers[5].question_id,
//            "answer": questions_answers[5].answer
//        ]
//        let question_answers7: Parameters = [
//            "question_id": questions_answers[6].question_id,
//            "answer": questions_answers[6].answer
//        ]
//        let question_answers8: Parameters = [
//            "question_id": questions_answers[7].question_id,
//            "answer": questions_answers[7].answer
//        ]
//        let question_answers9: Parameters = [
//            "question_id": questions_answers[8].question_id,
//            "answer": questions_answers[8].answer
//        ]
        
        let params: Parameters = [
            "test_id": test_id,
            "score": score,
            "questions_answers": [question_answers, question_answers2, question_answers3, question_answers4, question_answers5]
        ]
        
        let headers: HTTPHeaders = ["accept": "application/json",
                                    "Authorization": "Bearer " + token!,
                                    "Content-Type": "application/json"]
        
        AF.request("http://172.104.198.169:8000/api/medical-test/app", method: .post, parameters: params, encoding: JSONEncoding.default, headers: headers).responseData { response in
            switch response.result {
            case .success(let info):
                let json = JSON(info)
                debugPrint(json)
                do {

                    guard let pruebaInfo = try? JSONDecoder().decode(PruebasScore.self, from: info) else {
                        print("Error: Could not get JSON")
                        return
                    }

                    //                        print(registerResponse)

                    guard let pruebaScore = pruebaInfo.score else {
                        print("Error: Could not get first name")
                        return
                    }

                    print(pruebaScore)
                    print("hola")

                }
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
    
    
    
}

struct PruebaView_Previews: PreviewProvider {
    static var previews: some View {
        PruebaView(prueba: Prueba(id: 1, nombre: "ÍNDICE DE KATZ", preg_resp: [
            PregResp(id: 1, pregunta: "¿Recibe ayuda para bañarse?", respuesta: [Respuesta(title:"No recibo ayuda", score:1.0), Respuesta(title:"Recibo ayuda con una parte del cuerpo", score:0.5), Respuesta(title:"Recibo ayuda con más de una parte del cuerpo", score:0.5), Respuesta(title:"No me baño", score:0.0)]),
            PregResp(id: 2, pregunta: "¿Recibe ayuda para vestirse?", respuesta: [Respuesta(title:"Me visto solo", score:1.0), Respuesta(title:"Requiero ayuda para los zapatos", score:0.5), Respuesta(title:"Recibo ayuda para la ropa", score:0.5), Respuesta(title:"No me visto", score:0.0)]),
            PregResp(id: 3, pregunta: "¿Recibe ayuda cuando va al sanitario?", respuesta: [Respuesta(title:"Voy solo y me arreglo", score:1.0),Respuesta(title:"Recibo ayuda para ir y asearse", score:0.5),Respuesta(title:"No voy al servicio", score:0.0)]),
            PregResp(id: 4, pregunta: "¿Recibe ayuda para levantarse?", respuesta: [Respuesta(title: "Me levanto y me acuesto solo", score: 1.0),Respuesta(title: "Necesita ayuda", score: 0.5),Respuesta(title: "No puedo salir de cama", score: 0.0)]),
            PregResp(id: 5, pregunta: "¿Recibe ayuda para comer?", respuesta: [Respuesta(title: "Como solo con cubiertos", score: 1.0),Respuesta(title: "Requiero ayuda", score: 0.5),Respuesta(title: "Requiero ayuda total", score: 0.0),Respuesta(title: "Sonda", score: 0.0)]),
            PregResp(id: 6, pregunta: "¿Practica la continencia?", respuesta: [Respuesta(title: "Contiene todo el día y noche", score: 1.0),Respuesta(title: "Incontinencia ocasional nocturna", score: 0.5),Respuesta(title: "Incontinencia permanente", score: 0.0)])], rangosScore:[[0.0, 2.0, 4.0, 7.0]], orden: 1, categorias: ["Incapacidad severa", "Incapacidad moderada", "Incapacidad leve"], scoreFinal: 0.0))
        
        
        
        
    }
}

