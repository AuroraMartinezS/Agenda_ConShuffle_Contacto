//
//  PantallaAgenda.swift
//  Agenda_Shuffle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI


let contactos = [
    ContactoAgenda(nombre: "Marisol", telefono: "656 098 0987"),
    ContactoAgenda(nombre: "Ana", telefono: "656 098 0987"),
    ContactoAgenda(nombre: "Juan", telefono: "656 098 0987"),
    ContactoAgenda(nombre: "Daniel", telefono: "656 098 0987"),
    ContactoAgenda(nombre: "Sofia", telefono: "656 098 3456"),
    ContactoAgenda(nombre: "Pepe", telefono: "656 123 3456"),
    ContactoAgenda(nombre: "Karen", telefono: "656 345 1234")
]

struct PantallaAgenda: View {
    var largo = UIScreen.main.bounds.width
    var ancho = UIScreen.main.bounds.height
    
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                /*ForEach(0...45, id: \.self){ _ in
                 Contacto_Preview()
                 }
                 }*/
                ForEach(contactos) { contacto in
                    //Text("\(contacto.nombre)")
                    ContactoPrevista(contacto_a_mostrar: contacto, al_pulsar: {
                        print("Te envía un saludo \(contacto.nombre) desde la pantalla de agenda")
                    })
                    
                }
            }
            .background(Color.cyan)
            .frame(width: largo, alignment: Alignment.center)
        }
        
    }
}

#Preview {
    PantallaAgenda()
}
