//
//  contacto_preview.swift
//  Agenda_Shuffle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

let contacto_prueba = ContactoAgenda(nombre: "Nombre", telefono: "Teléfono")

struct ContactoPrevista: View {
    var contacto_a_mostrar: ContactoAgenda
    var al_pulsar: () -> Void = {print("No se ha implementado nada")}
    var color_letras_nombre = Color(red: 0.212, green: 0.243, blue: 0.439)
    var color_letras_tel = Color(red: 0.275, green: 0.357, blue: 0.541)
    var color_contenedor = Color(red: 0.675, green: 0.753, blue: 0.902)
    let esquinas_redondeadas = CGSize(width: 10, height: 10)
    
    
    var body: some View {
        HStack(alignment: VerticalAlignment.center, spacing: 10){
            
            Spacer()
            
            VStack{
                Image(contacto_a_mostrar.imagen)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, alignment: .center)
                    .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
            }
            
            Spacer()
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 5){
                Text(contacto_a_mostrar.nombre)
                    .font(.system(size: 18, weight: .heavy))
                    .foregroundStyle(color_letras_nombre)
                Text(contacto_a_mostrar.telefono)
                    .foregroundStyle(color_letras_tel)
            }
            .padding(10)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(color_contenedor.gradient)
        .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
        /*.onTapGesture {
            al_pulsar()
        }*/
        .shadow(color: .black, radius: 3, x: 0, y: 3)
        
    }
    
}

#Preview {
    ContactoPrevista(contacto_a_mostrar: contacto_prueba)
}
