//
//  PantallaAgenda.swift
//  Agenda_Shuffle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI


let contactos = [
    ContactoAgenda(nombre: "Marisol", telefono: "656 098 0987"),
    ContactoAgenda(nombre: "Marisol", telefono: "656 098 0987"),
    ContactoAgenda(nombre: "Marisol", telefono: "656 098 0987"),
    ContactoAgenda(nombre: "Marisol", telefono: "656 098 0987")
]

struct PantallaAgenda: View {
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        List {
            VStack {
                /*ForEach(0...45, id: \.self){ _ in
                    Contacto_Preview()
                }
            }*/
                /*ForEach(contactos) { contacto in
                    Text("\(contacto.nombre)")
                    
                }*/
            //.background(Color.cyan)
        }
        
        
    }
}

#Preview {
    PantallaAgenda()
}
