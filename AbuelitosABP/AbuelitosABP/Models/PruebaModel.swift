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
            PregResp(pregunta: "¿Recibe ayuda para bañarse?", respuesta: [Respuesta(title:"No recibo ayuda", score:1.0), Respuesta(title:"Recibo ayuda con una parte del cuerpo", score:0.5), Respuesta(title:"Recibo ayuda con más de una parte del cuerpo", score:0.5), Respuesta(title:"No me baño", score:0.0)]),
            PregResp(pregunta: "¿Recibe ayuda para vestirse?", respuesta: [Respuesta(title:"Me visto solo", score:1.0), Respuesta(title:"Requiero ayuda para los zapatos", score:0.5), Respuesta(title:"Recibo ayuda para la ropa", score:0.5), Respuesta(title:"No me visto", score:0.0)]),
            PregResp(pregunta: "¿Recibe ayuda cuando va al sanitario?", respuesta: [Respuesta(title:"Voy solo y me arreglo", score:1.0),Respuesta(title:"Recibo ayuda para ir y asearse", score:0.5),Respuesta(title:"No voy al servicio", score:0.0)]),
            PregResp(pregunta: "¿Recibe ayuda para levantarse?", respuesta: [Respuesta(title: "Me levanto y me acuesto solo", score: 1.0),Respuesta(title: "Necesita ayuda", score: 0.5),Respuesta(title: "No puedo salir de cama", score: 0.0)]),
            PregResp(pregunta: "¿Recibe ayuda para comer?", respuesta: [Respuesta(title: "Como solo con cubiertos", score: 1.0),Respuesta(title: "Requiero ayuda", score: 0.5),Respuesta(title: "Requiero ayuda total", score: 0.0),Respuesta(title: "Sonda", score: 0.0)]),
            PregResp(pregunta: "¿Practica la continencia?", respuesta: [Respuesta(title: "Contiene todo el día y noche", score: 1.0),Respuesta(title: "Incontinencia ocasional nocturna", score: 0.5),Respuesta(title: "Incontinencia permanente", score: 0.0)])], rangosScore:[[0.0, 2.0, 4.0, 7.0]], orden: 1, categorias: ["Incapacidad severa", "Incapacidad moderada", "Incapacidad leve"], scoreFinal: 0.0)
        
        
        pruebas.append(prueba)
        
        prueba = Prueba(nombre: "ÍNDICE DE LAWTON & BRODY", preg_resp: [
            PregResp(pregunta: "¿Qué utilidad le da a su teléfono?", respuesta: [Respuesta(title: "Lo uso por iniciativa propia", score: 1.0),Respuesta(title: "Unicamente para marcar a números conocidos", score: 1.0),Respuesta(title: "Unicamente para contestar, no marco", score: 1.0),Respuesta(title: "No uso el teléfono", score: 0.0)]),
            PregResp(pregunta: "¿Cómo realiza sus compras?", respuesta: [Respuesta(title: "Realizo todas mis compras independientemente", score: 1.0),Respuesta(title: "Realizo independientemente pequeñas compras", score: 0.0),Respuesta(title: "Necesito ir acompañado para hacer cualquier compra", score: 0.0),Respuesta(title: "Totalmente incapaz de ir a comprar", score: 0.0)]),
            PregResp(pregunta: "¿Preparas tu propia comida?", respuesta: [Respuesta(title: "Organizo, preparo y sirvo las comidas por mi mismo adecuadamente", score: 1.0),Respuesta(title: "Preparo adecuadamente las comidas si me proporcionan los ingredientes", score: 0.0),Respuesta(title: "Preparo, caliento y sirvo las comidas, pero no sigo una dieta adecuada", score: 0.0),Respuesta(title: "Necesito que me preparen y sirvan las comidas", score: 0.0)]),
            PregResp(pregunta: "¿Usted realiza el cuidado de la casa?", respuesta: [Respuesta(title: "Mantengo la casa solo o con ayuda ocasional", score: 1.0),Respuesta(title: "Realizo tareas ligeras, como lavar los platos o hacer las camas", score: 1.0),Respuesta(title: "Realizo tareas ligeras, pero no puedo mantener un adecuado nivel de limpieza", score: 1.0),Respuesta(title: "Necesito ayuda en todos los labores de la casa", score: 1.0),Respuesta(title: "No participo en ningun labor de la casa", score: 0.0)]),
            PregResp(pregunta: "¿Usted lava la ropa?", respuesta: [Respuesta(title: "Yo mismo lavo toda mi ropa", score: 1.0),Respuesta(title: "Yo mismo lavo pequeñas prendas", score: 1.0),Respuesta(title: "Me lavan la ropa", score: 0.0)]),
            PregResp(pregunta: "¿Utiliza medios de transporte?", respuesta: [Respuesta(title: "Viajo solo en transporte público o conduzco mi propio coche", score: 1.0),Respuesta(title: "Soy capaz de tomar un taxi, pero no uso otro medio de transporte", score: 1.0),Respuesta(title: "Viajo en transporte público solo cuando voy acompañado", score: 1.0),Respuesta(title: "Sólo utilizo el taxi o el automóvil con ayuda de otros", score: 0.0),Respuesta(title: "No viajo", score: 0.0)]),
            PregResp(pregunta: "¿Es responsable de su medicación?", respuesta: [Respuesta(title: "Soy capaz de tomar mi medicación a la hora y con la dosis correcta", score: 1.0),Respuesta(title: "Tomo mi medicación si la dosis es preparada previamente", score: 0.0),Respuesta(title: "No soy capaz de administrar mi medicación", score: 0.0)]),
            PregResp(pregunta: "¿Maneja sus asuntos económicos?", respuesta: [Respuesta(title: "Me encargo de todos mis asuntos económicos", score: 1.0),Respuesta(title: "Realizo las compras de cada día, pero necesito ayuda en las compras grandes", score: 1.0),Respuesta(title: "Soy incapaz de manejar dinero", score: 0.0)])], rangosScore:[[0.0, 2.0, 4.0, 6.0, 8.0, 9.0],[0.0, 1.0, 2.0, 4.0, 5.0, 6.0]], orden: 1, categorias: ["Dependencia total", "Dependencia grave", "Dependencia moderada", "Dependencia ligera", "Autónomo"], scoreFinal: 0.0)
        
        pruebas.append(prueba)
        
        
        prueba = Prueba(nombre: "ESCALA ABREVIADA DE YESAVAGE", preg_resp: [
            PregResp(pregunta: "¿Está usted satisfecho con su vida?", respuesta: [Respuesta(title: "SI", score: 0.0),Respuesta(title: "NO", score: 1.0)]),
            PregResp(pregunta: "¿Ha abandonado sus actividades e intereses?", respuesta: [Respuesta(title: "SI", score: 1.0),Respuesta(title: "NO", score: 0.0)]),
            PregResp(pregunta: "¿Siente su vida vacía?", respuesta: [Respuesta(title: "SI", score: 1.0),Respuesta(title: "NO", score: 0.0)]),
            PregResp(pregunta: "¿Se aburre a menudo?", respuesta: [Respuesta(title: "SI", score: 1.0),Respuesta(title: "NO", score: 0.0)]),
            PregResp(pregunta: "¿Se encuentra de buen humor la mayor parte del tiempo?", respuesta: [Respuesta(title: "SI", score: 0.0),Respuesta(title: "NO", score: 1.0)]),
            PregResp(pregunta: "¿Teme que algo malo le ocurra?", respuesta: [Respuesta(title: "SI", score: 1.0),Respuesta(title: "NO", score: 0.0)]),
            PregResp(pregunta: "¿Esta usted feliz la mayor parte del tiempo?", respuesta: [Respuesta(title: "SI", score: 0.0),Respuesta(title: "NO", score: 1.0)]),
            PregResp(pregunta: "¿A menudo siente que su situación no tiene remedio?", respuesta: [Respuesta(title: "SI", score: 1.0),Respuesta(title: "NO", score: 0.0)]),
            PregResp(pregunta: "¿Prefiere quedarse en casa que salir?", respuesta: [Respuesta(title: "SI", score: 1.0),Respuesta(title: "NO", score: 0.0)]),
            PregResp(pregunta: "¿Cree que tiene más problemas de memoria que otros?", respuesta: [Respuesta(title: "SI", score: 1.0),Respuesta(title: "NO", score: 0.0)]),
            PregResp(pregunta: "¿Piensa que es maravilloso vivir?", respuesta: [Respuesta(title: "SI", score: 0.0),Respuesta(title: "NO", score: 1.0)]),
            PregResp(pregunta: "¿Se siente inútil?", respuesta: [Respuesta(title: "SI", score: 1.0),Respuesta(title: "NO", score: 0.0)]),
            PregResp(pregunta: "¿Se siente lleno de energía?", respuesta: [Respuesta(title: "SI", score: 0.0),Respuesta(title: "NO", score: 1.0)]),
            PregResp(pregunta: "¿Ha perdido toda la esperanza?", respuesta: [Respuesta(title: "SI", score: 1.0),Respuesta(title: "NO", score: 0.0)]),
            PregResp(pregunta: "¿Piensa que los demás están mejor que usted?", respuesta: [Respuesta(title: "SI", score: 1.0),Respuesta(title: "NO", score: 0.0)])], rangosScore:[[0.0, 6.0, 10.0, 16.0]], orden: 0, categorias: ["Normal", "Depresión leve", "Depresión establecida"], scoreFinal: 0.0)
        
        pruebas.append(prueba)
        
        prueba = Prueba(nombre: "ESCALA SARC-F", preg_resp: [
            PregResp(pregunta: "¿Qué tanta dificultad tiene para llevar o cargar 4-5 kilogramos?", respuesta: [Respuesta(title: "Ninguna", score: 0.0),Respuesta(title: "Alguna", score: 1.0),Respuesta(title: "Mucha o incapaz", score: 2.0)]),
            PregResp(pregunta: "¿Qué tanta dificultad tiene para cru- zar caminando por un cuarto?", respuesta: [Respuesta(title: "Ninguna", score: 0.0),Respuesta(title: "Alguna", score: 1.0),Respuesta(title: "Mucha, usando auxiliares o incapaz", score: 2.0)]),
            PregResp(pregunta: "¿Qué tanta dificultad tiene para levantarse de una silla o cama?", respuesta: [Respuesta(title: "Ninguna", score: 0.0),Respuesta(title: "Alguna", score: 1.0),Respuesta(title: "Mucha o incapaz, sin ayuda", score: 2.0)]),
            PregResp(pregunta: "¿Qué tanta dificultad tiene para subir 10 escalones?", respuesta: [Respuesta(title: "Ninguna", score: 0.0),Respuesta(title: "Alguna", score: 1.0),Respuesta(title: "Mucha o incapaz", score: 2.0)]),
            PregResp(pregunta: "¿Cuántas veces se ha caído en el último año?", respuesta: [Respuesta(title: "Ninguna", score: 0.0),Respuesta(title: "1 a 3 caídas", score: 1.0),Respuesta(title: "4 o más caídas", score: 2.0)])], rangosScore:[[0.0, 4.0, 11.0]], orden: 0, categorias: ["Baja probabilidad de sarcopenia", "Alta probabilidad de sarcopenia"] , scoreFinal: 0.0)
        
        pruebas.append(prueba)
        
        prueba = Prueba(nombre: "CUESTIONARIO FRAIL", preg_resp: [
            PregResp(pregunta: "¿Está usted cansado?", respuesta: [Respuesta(title: "SI", score: 1.0),Respuesta(title: "NO", score: 0.0)]),
            PregResp(pregunta: "¿Es incapaz de subir un piso de escaleras?", respuesta: [Respuesta(title: "SI", score: 1.0),Respuesta(title: "NO", score: 0.0)]),
            PregResp(pregunta: "¿Es incapaz de caminar una manzana?", respuesta: [Respuesta(title: "SI", score: 1.0),Respuesta(title: "NO", score: 0.0)]),
            PregResp(pregunta: "¿Tiene más de 5 enfermedades?", respuesta: [Respuesta(title: "SI", score: 1.0),Respuesta(title: "NO", score: 0.0)]),
            PregResp(pregunta: "¿Ha perdido mas del 5% de su peso en los últimos 6 meses?", respuesta: [Respuesta(title: "SI", score: 1.0),Respuesta(title: "NO", score: 0.0)])], rangosScore:[[0.0, 1.0, 3.0, 6.0]], orden: 0, categorias: ["Sin fragilidad", "Probable pre-fragilidad", "Probable fragilidad"], scoreFinal: 0.0)
        
        pruebas.append(prueba)
        
        prueba = Prueba(nombre: "VALORACIÓN SOCIOFAMILIAR DE GIJÓN", preg_resp: [
            PregResp(pregunta: "¿Cúal es su situación familiar?", respuesta: [Respuesta(title: "Vivo con pareja y/o familia sin conflicto", score: 1.0),Respuesta(title: "Vivo con pareja de edad smiliar", score: 2.0),Respuesta(title: "Vivo con pareja y/o otros, pero no pueden o no quieren atenderlo", score: 3.0),Respuesta(title: "Vivo solo, hijos y/o familiares próximos que no cubren todas las necesidades", score: 4.0),Respuesta(title: "Vive solo, familia lejana, desatendido, sin familia", score: 5.0)]),
            PregResp(pregunta: "¿Cómo son sus relaciones y contactos sociales?", respuesta: [Respuesta(title: "Mantengo relaciones sociales fuera del domicilio", score: 1.0),Respuesta(title: "Sólo me relaciono con familia/vecinos/otros", score: 2.0),Respuesta(title: "Sólo me relaciono con familia", score: 3.0),Respuesta(title: "No salgo de mi domicilio, recibo familia o visitas", score: 4.0),Respuesta(title: "No salgo de mi domicilio, no recibo visitas", score: 5.0)]),
            PregResp(pregunta: "Apoyos red social", respuesta: [Respuesta(title: "No necesito ningún apoyo", score: 1.0),Respuesta(title: "Recibo apoyo de familia y/o vecinos", score: 2.0),Respuesta(title: "Recibo apoyo social formal suficiente", score: 3.0),Respuesta(title: "Tengo soporte social pero es insuficiente", score: 4.0),Respuesta(title: "No tengo ningún soporte social y lo necesito", score: 5.0)])], rangosScore:[[0.0, 8.0, 10.0, 16.0]], orden: 0, categorias: ["Situacion social buena", "Situacion social intermedia", "Deterioro social severo"], scoreFinal: 0.0)
        
        pruebas.append(prueba)
        
        
    }
    
    
}
