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
    @State private var imagen_seleccionada: String = "PhotoCat"
    
    let esquinas_redondeadas = CGSize(width: 10, height: 10)
    
    var boton_salir: () -> Void = {
        print("Estas saliendo")
    }
    var boton_agregar: (_ nombre: String, _ numero : String, _ imagen: String ) -> Void = {nombre, numero, imagen in
        print("Estas agregando")
    }
    
    var body: some View {
        
        VStack(spacing: 20){
            
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
                    .background(Color.mint)
                    .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
                    .padding(10)
                    .onTapGesture {
                        boton_agregar(nombre, numero_telefonico, imagen_seleccionada)
                    }
                Spacer()
                Icono(tamaño: 40, ruta_icono: "return")
                    .foregroundStyle(.white)
                    .background(nombre == "" ? Color.red: Color.orange)
                    .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
                    .padding(10)
                    .onTapGesture {
                        boton_salir()
                    }
                //operador ternario; la primera variable de Color es por es la condición es verdad, la segunda por si es falsa.

            }
           
            
        }.padding(30)
        
        HStack{
            Image("PhotoCat")
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
                .shadow(color: .black, radius: 3, x: 0, y: 3)
                .onTapGesture {
                    imagen_seleccionada = "PhotoCat"
                }
            Image("Capibara")
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .shadow(color: .black, radius: 3, x: 0, y: 3)
                .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
                .onTapGesture {
                    imagen_seleccionada = "Capibara"
                }
            Image("Ave")
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .shadow(color: .black, radius: 3, x: 0, y: 3)
                .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
                .onTapGesture {
                    imagen_seleccionada = "Ave"
                }
                
                
        }
        
    }
}

#Preview {
    Pantalla_Agregar_Contacto()
}
