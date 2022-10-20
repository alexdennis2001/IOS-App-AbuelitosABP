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
                    
                    
                    VStack(alignment: .leading, spacing: 5){
                        Group{
                            Text("\(first_name) \(last_name)")
                                .font(.system(size: 34, weight: .bold))
                            Text("Fecha de Nacimiento: \(birth_date)")
                                .font(.system(size: 20, weight: .medium))
                            Text("Decanato: \(decanato)")
                                .font(.system(size: 20, weight: .medium))
                            Text("Parroquia: \(parroquia)")
                                .font(.system(size: 20, weight: .medium))
                        }
                        
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.white)
                            .frame(width: 350, height: 200)
                    )
                    .frame(width: 350, height: 100)
                    .padding(.top, 60)
                    .padding(.bottom, 50)
                    
                    
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
                            
                            
                            
                        } label: {
                            
                            HStack{
                                Text("Cerrar Sesión")
                                
                            }
                            .foregroundColor(.black)
                            .background(
                                Capsule()
                                    .fill(.white)
                                    .frame(width: 350, height: 100)
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
            
            
        }
        
    }
    
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
