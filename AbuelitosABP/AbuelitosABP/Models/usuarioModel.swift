////
////  usuarioModel.swift
////  AbuelitosABP
////
////  Created by Alejandro Dennis on 17/10/22.
////
//
//import SwiftUI
//import Alamofire
//import SwiftyJSON
//
//class usuarioModel: ObservableObject {
//
//    @Published var users = [usuario]()
//
//    init() {
//
//        addUser()
//
//    }
//
//    func addUser(user: usuario) {
//
//        let URL = "http://172.104.198.169:8000/api/docs/api/patients"
//        var body:[String: Any] = [
//            "phone": user.phone,
//            "password": user.password
//            ]
//        print(body)
//        AF.request(URL, method: .post, parameters: body, encoding: URLEncoding.default).responseJSON { data in
//            print(data.response)
//        }
//    }
//}
//
