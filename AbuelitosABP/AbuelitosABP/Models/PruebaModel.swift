//
//  PruebaModel.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 28/09/22.
//

import SwiftUI

class PruebaModel: ObservableObject {
    
    @Published var pruebas = [Prueba]()
    
    init() {
        LoadInfo()
    }
    
    func LoadInfo() {
        var prueba: Prueba
        
        prueba = Prueba(nombre: "ÍNDICE DE KATZ", preg_resp: [
            PregResp(pregunta: "¿Recibe ayuda para bañarse?", respuesta: ["No recibo ayuda","Recibo ayuda con una parte del cuerpo","Recibo ayuda con más de una parte del cuerpo","No me baño"]),
            PregResp(pregunta: "¿Recibe ayuda para vestirse?", respuesta: ["Me visto solo","Requiero ayuda para los zapatos","Recibo ayuda para la ropa","No me visto"]),
            PregResp(pregunta: "¿Recibe ayuda cuando va al sanitario?", respuesta: ["Voy solo y me arreglo","Recibo ayuda para ir y asearse","No voy al servicio"]),
            PregResp(pregunta: "¿Recibe ayuda para levantarse?", respuesta: ["Me levanto y me acuesto solo","Necesita ayuda","No puedo salir de cama"]),
            PregResp(pregunta: "¿Recibe ayuda para comer?", respuesta: ["Como solo con cubiertos","Requiero ayuda","Requiero ayuda total","Sonda"]),
            PregResp(pregunta: "¿Realiza continencias?", respuesta: ["Contiene todo el día y noche","Incontinencia ocasional nocturna","Incontinencia permanente"])])
        
        
        pruebas.append(prueba)
        
        prueba = Prueba(nombre: "ÍNDICE DE LAWTON & BRODY", preg_resp: [
            PregResp(pregunta: "¿Qué utilidad le da a su teléfono?", respuesta: ["Lo uso por iniciativa propia","Unicamente para marcar a números conocidos","Unicamente para contestar, no marco","No uso el teléfono"]),
            PregResp(pregunta: "¿Cómo realiza sus compras?", respuesta: ["Realizo todas mis compras independientemente","Realizo independientemente pequeñas compras","Necesito ir acompañado para hacer cualquier compra","Totalmente incapaz de ir a comprar"]),
            PregResp(pregunta: "¿Preparas tu propia comida?", respuesta: ["Organizo, preparo y sirvo las comidas por mi mismo adecuadamente","Preparo adecuadamente las comidas si me proporcionan los ingredientes","Preparo, caliento y sirvo las comidas, pero no sigo una dieta adecuada","Necesito que me preparen y sirvan las comidas"]),
            PregResp(pregunta: "¿Usted realiza el cuidado de la casa?", respuesta: ["Mantengo la casa solo o con ayuda ocasional","Realizo tareas ligeras, como lavar los platos o hacer las camas","Realizo tareas ligeras, pero no puedo mantener un adecuado nivel de limpieza","Necesito ayuda en todos los labores de la casa","No participo en ningun labor de la casa"]),
            PregResp(pregunta: "¿Usted lava la ropa?", respuesta: ["Yo mismo lavo toda mi ropa","Yo mismo lavo pequeñas prendas","Me lavan la ropa"]),
            PregResp(pregunta: "¿Utiliza medios de transporte?", respuesta: ["Viajo solo en transporte público o conduzco mi propio coche","Soy capaz de tomar un taxi, pero no uso otro medio de transporte","Viajo en transporte público solo cuando voy acompañado","Sólo utilizo el taxi o el automóvil con ayuda de otros","No viajo"]),
            PregResp(pregunta: "¿Es responsable de su medicación?", respuesta: ["Soy capaz de tomar mi medicación a la hora y con la dosis correcta","Tomo mi medicación si la dosis es preparada previamente","No soy capaz de administrar mi medicación"]),
            PregResp(pregunta: "¿Maneja sus asuntos económicos?", respuesta: ["Me encargo de todos mis asuntos económicos","Realizo las compras de cada día, pero necesito ayuda en las compras grandes","Soy incapaz de manejar dinero"])])
        
        pruebas.append(prueba)
        
        
        prueba = Prueba(nombre: "ESCALA ABREVIADA DE DEPRESIÓN GERIÁTRICA DE YESAVAGE", preg_resp: [
            PregResp(pregunta: "¿Está usted satisfecho con su vida?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Ha abandonado sus actividades e intereses?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Siente su vida vacía?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Se aburre a menudo?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Se encuentra de buen humor la mayor parte del tiempo?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Teme que algo malo le ocurra?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Esta usted feliz la mayor parte del tiempo?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿A menudo siente que su situación no tiene remedio?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Prefiere quedarse en casa que salir?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Cree que tiene más problemas de memoria que otros?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Piensa que es maravilloso vivir?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Se siente inútil?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Se siente lleno de energía?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Ha perdido toda la esperanza?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Piensa que los demás están mejor que usted?", respuesta: ["SI","NO"])])
        
        pruebas.append(prueba)
        
        prueba = Prueba(nombre: "ESCALA SARC-F", preg_resp: [
            PregResp(pregunta: "¿Qué tanta dificultad tiene para llevar o cargar 4-5 kilogramos?", respuesta: ["Ninguna","Alguna","Mucha o incapaz"]),
            PregResp(pregunta: "¿Qué tanta dificultad tiene para cru- zar caminando por un cuarto?", respuesta: ["Ninguna","Alguna","Mucha, usando auxiliares o incapaz"]),
            PregResp(pregunta: "¿Qué tanta dificultad tiene para levantarse de una silla o cama?", respuesta: ["Ninguna","Alguna","Mucha o incapaz, sin ayuda"]),
            PregResp(pregunta: "¿Qué tanta dificultad tiene para subir 10 escalones?", respuesta: ["Ninguna","Alguna","Mucha o incapaz"]),
            PregResp(pregunta: "¿Cuántas veces se ha caído en el último año?", respuesta: ["Ninguna","1 a 3 caídas","4 o más caídas"])])
        
        pruebas.append(prueba)
        
        prueba = Prueba(nombre: "CUESTIONARIO FRAIL PARA DETECCIÓN DE FRAGILIDAD", preg_resp: [
            PregResp(pregunta: "¿Está usted cansado?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Es incapaz de subir un piso de escaleras?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Es incapaz de caminar una manzana?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Tiene más de 5 enfermedades?", respuesta: ["SI","NO"]),
            PregResp(pregunta: "¿Ha perdido mas del 5% de su peso en los últimos 6 meses?", respuesta: ["SI","NO"])])
        
        pruebas.append(prueba)
        
        prueba = Prueba(nombre: "ESCALA DE VALORACIÓN SOCIOFAMILIAR DE GIJÓN", preg_resp: [
            PregResp(pregunta: "¿Cúal es su situación familiar?", respuesta: ["Vivo con pareja y/o familia sin conflicto","Vivo con pareja de edad smiliar","Vivo con pareja y/o otros, pero no pueden o no quieren atenderlo","Vivo solo, hijos y/o familiares próximos que no cubren todas las necesidades","Vive solo, familia lejana, desatendido, sin familia"]),
            PregResp(pregunta: "¿Cómo son sus relaciones y contactos sociales?", respuesta: ["Mantengo relaciones sociales fuera del domicilio","Sólo me relaciono con familia/vecinos/otros","Sólo me relaciono con familia","No salgo de mi domicilio, recibo familia o visitas","No salgo de mi domicilio, no recibo visitas"]),
            PregResp(pregunta: "Apoyos red social", respuesta: ["No necesito ningún apoyo","Recibo apoyo de familia y/o vecinos","Recibo apoyo social formal suficiente","Tengo soporte social pero es insuficiente","No tengo ningún soporte social y lo necesito"])])
        
        pruebas.append(prueba)
        
        
        
        
        
    }
    
    
}
