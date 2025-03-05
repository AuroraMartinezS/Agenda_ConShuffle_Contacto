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
    
    let esquinas_redondeadas = CGSize(width: 10, height: 10)
    
    var body: some View {
        HStack(alignment: VerticalAlignment.center, spacing: 10){
            
            Spacer()
            
            VStack{
                Image("Imagen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, alignment: .center)
                    .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
            }.background(Color.white)
            
            Spacer()
            
            VStack(alignment: HorizontalAlignment.leading, spacing: 5){
                Text(contacto_a_mostrar.nombre)
                    .font(.system(size: 18, weight: .heavy))
                Text(contacto_a_mostrar.telefono)
            }
            .padding(10)
            .frame(maxWidth: .infinity, alignment: .leading)
            //.background(Color.purple)
            
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.mint)
        .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
        .onTapGesture {
            al_pulsar()
        }
        
    }
    
}

#Preview {
    ContactoPrevista(contacto_a_mostrar: contacto_prueba)
}
