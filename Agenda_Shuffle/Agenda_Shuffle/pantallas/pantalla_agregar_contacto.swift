//
//  pantalla_agregar_contacto.swift
//  Agenda_Shuffle
//
//  Created by alumno on 3/3/25.
//

import SwiftUI

struct Pantalla_Agregar_Contacto: View {
    @State private var nombre: String = ""
    @State private var numero_telefonico: String = ""
    
    var body: some View {
        Text("Colocar la etiqueta de nombre")
        TextField("Ingrese el nombre", text: $nombre)
            //.textFieldStyle(.roundedBorder)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                .stroke(Color.orange)
            )
        
        Text("Colocar el campo del número telefónico")
        TextField("Ingrese el número de teléfono", text: $numero_telefonico)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                .stroke(Color.orange)
            )
        
        HStack{
            Icono(tamaño: 50, ruta_icono: "person.fill.badge.plus", padding: 10)
            Spacer()
            Icono(tamaño: 50, ruta_icono: "arrowshape.turn.up.backward.fill")
                .background(nombre == "" ? Color.red: Color.orange)
            //operador ternario; la primera variable de Color es por es la condición es verdad, la segunda por si es falsa.

        }
        .background(Color.mint)
        
    }
}

#Preview {
    Pantalla_Agregar_Contacto()
}
