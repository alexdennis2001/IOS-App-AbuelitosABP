//
//  AccountVIew.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 12/09/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON

struct AccountView: View {
    @AppStorage("Page") var currentPage: Page?
    @AppStorage("Menu") var tabSelection: Int?
    @AppStorage("ScorePrueba1") var scorePrueba1: Double?
    @AppStorage("ScorePrueba2") var scorePrueba2: Double?
    @AppStorage("ScorePrueba3") var scorePrueba3: Double?
    @AppStorage("ScorePrueba4") var scorePrueba4: Double?
    @AppStorage("ScorePrueba5") var scorePrueba5: Double?
    @AppStorage("ScorePrueba6") var scorePrueba6: Double?
    
    @State private var first_name: String = UserDefaults.standard.string(forKey: "first_name") ?? "string"
    @State private var last_name: String = UserDefaults.standard.string(forKey: "last_name") ?? "string"
    @State private var birth_date: String = UserDefaults.standard.string(forKey: "birth_date") ?? "2022-10-20"
    @State private var decanato: String = UserDefaults.standard.string(forKey: "decanato") ?? "string"
    @State private var parroquia: String = UserDefaults.standard.string(forKey: "parroquia") ?? "string"
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .top) {
                Color("BackgroundColor")
                    .ignoresSafeArea()
                VStack{
                    Capsule()
                        .fill(.white)
                        .frame(width: 230, height: 400)
                    
                        .overlay(
                            Image("User")
                                .scaledToFit()
                                .offset(x: 0, y: 100)
                        )
                        .offset(x: 0, y: -100)
                        .frame(height: 200)
                    
                    
                    VStack(alignment: .center, spacing: 5){
                        Group{
                            Text("\(first_name) \(last_name)")
                                .font(.system(size: 34, weight: .bold))
                            
                            Text("Fecha de Nacimiento")
                                .font(.system(size: 20, weight: .medium))
                            Text("\(birth_date)")
                                .font(.system(size: 20, weight: .bold))
                            Text("Decanato")
                                .font(.system(size: 20, weight: .medium))
                            Text("\(decanato)")
                                .font(.system(size: 20, weight: .bold))
                            Text("Parroquia")
                                .font(.system(size: 20, weight: .medium))
                            Text("\(parroquia)")
                                .font(.system(size: 20, weight: .bold))
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.white)
                            .frame(width: 350, height: 250)
                    )
                    .frame(width: 350, height: 100)
                    .padding(.top, 70)
                    .padding(.bottom, 65)
                    
                    
                    Spacer()
                    
                    VStack(){
                        
                        NavigationLink(destination: CambiarDatosView()){
                            HStack{
                                Text("Cambiar Datos Cuenta")
                                Image(systemName: "greaterthan").font(.system(size: 30, weight: .ultraLight))
                                    .offset(x: 20, y: 0)
                                
                            }
                            .foregroundColor(.black)
                            .background(
                                Capsule()
                                    .fill(.white)
                                    .frame(width: 350, height: 100)
                            )
                            
                        }
                        .navigationTitle("")
                        .padding(.bottom, 90)
                        
                        NavigationLink(destination: CambiarFormularioView()){
                            HStack{
                                Text("Editar Formulario")
                                    .offset(x: -17)
                                Image(systemName: "greaterthan").font(.system(size: 30, weight: .ultraLight))
                                    .offset(x: 38, y: 0)
                                
                            }
                            .foregroundColor(.black)
                            .background(
                                Capsule()
                                    .fill(.white)
                                    .frame(width: 350, height: 100)
                            )
                            
                        }
                        .navigationTitle("")
                        .padding(.bottom, 90)
                        
                      
                        
                        Button {
                            tabSelection = 1
                            currentPage = .login
                            
                            UserDefaults.resetStandardUserDefaults()
                            scorePrueba1 = nil
                            scorePrueba2 = nil
                            scorePrueba3 = nil
                            scorePrueba4 = nil
                            scorePrueba5 = nil
                            scorePrueba6 = nil
                            
                            
                        } label: {
                            
                            HStack{
                                Text("Cerrar Sesión")
                                
                            }
                            .foregroundColor(.black)
                            .background(
                                Capsule()
                                    .fill(.white)
                                    .frame(width: 350, height: 90)
                            )
                        }
                        
                    }
                    .frame(width: 350, height: 380)
                    .offset(y: -10)
                    
                    
                    
                    
                }
                .offset(y: -50)
                
                
            }
            
        }.onAppear(perform: LoadData)
    }
    func LoadData() {
        let defaults = UserDefaults.standard
        let token = UserDefaults.standard.string(forKey: "jsonwebtoken")
        let headers: HTTPHeaders = ["accept": "application/json",
                                    "Authorization": "Bearer " + token!]
        
        AF.request("http://172.104.198.169:8000/api/patients/me", method: .get, encoding: URLEncoding.default, headers: headers).responseData { response in
            
            //            let json = try! JSON(data: data.data!)
            //            print(json)
            
            guard let data = response.data else { return }
            let user = try! JSONDecoder().decode(LoadAllData.self, from: data)
//            print(user.first_name)
//            print(user.last_name)
//            print(user.birth_date)
    
            defaults.setValue(user.first_name, forKey: "first_name")
            defaults.setValue(user.last_name, forKey: "last_name")
            defaults.setValue(user.birth_date, forKey: "birth_date")
            defaults.setValue(user.patient_info.decanato, forKey: "decanato")
            defaults.setValue(user.patient_info.parroquia, forKey: "parroquia")
            
            defaults.setValue(user.user.phone, forKey: "cel")
            defaults.setValue(user.second_last_name, forKey: "second_last_name")
            
            defaults.setValue(user.patient_info.estado, forKey: "estado")
            defaults.setValue(user.patient_info.municipio, forKey: "municipio")
            defaults.setValue(user.patient_info.zona, forKey: "zona")
            defaults.setValue(user.patient_info.direccion, forKey: "direccion")
            
            
        }
        
    }
    
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
