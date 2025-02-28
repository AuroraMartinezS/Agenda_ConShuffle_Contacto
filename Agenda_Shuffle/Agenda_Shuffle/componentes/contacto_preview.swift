//
//  contacto_preview.swift
//  Agenda_Shuffle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI

let contacto_prueba = ContactoAgenda(nombre: "sdfsdfsdfdsf", telefono: "09876543")

struct ContactoPrevista: View {
    var contacto_a_mostrar: ContactoAgenda
    var al_pulsar: () -> Void = {print("No se ha implementado nada")}
    
    let esquinas_redondeadas = CGSize(width: 15, height: 15)
    
    var body: some View {
        HStack(alignment: VerticalAlignment.center){
            
            Spacer()
            
            VStack{
                Image("Imagen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, alignment: .center)
                    .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
            }.background(Color.white)
            
            Spacer()
            
            VStack(alignment: HorizontalAlignment.leading){
                Text(contacto_a_mostrar.nombre)
                Text(contacto_a_mostrar.telefono)
            }
            .frame(width: 150)
            .background(Color.gray)
            
            
            Spacer()
        }
        .frame(width: 250)
        .background(Color.red)
        .onTapGesture {
            al_pulsar()
        }
        
    }
    
}

#Preview {
    ContactoPrevista(contacto_a_mostrar: contacto_prueba)
}
