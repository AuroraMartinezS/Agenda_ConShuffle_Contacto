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
    
    var boton_salir: () -> Void = {
        print("Estas saliendo")
    }
    var boton_agregar: (_ nombre: String, _ numero : String) -> Void = {nombre, numero in
        print("Estas agregando")
    }
    
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
            Icono(tamaño: 40, ruta_icono: "person.fill.badge.plus", padding: 10)
                .foregroundStyle(.indigo)
                .onTapGesture {
                    boton_agregar(nombre, numero_telefonico)
                }
            Spacer()
            Icono(tamaño: 40, ruta_icono: "return")
                .foregroundStyle(.indigo)
                .background(nombre == "" ? Color.red: Color.orange)
                .onTapGesture {
                    boton_salir()
                }
            //operador ternario; la primera variable de Color es por es la condición es verdad, la segunda por si es falsa.

        }
        .background(Color.mint)
        
    }
}

#Preview {
    Pantalla_Agregar_Contacto()
}
