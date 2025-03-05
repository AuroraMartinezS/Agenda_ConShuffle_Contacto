//
//  pantalla_del_ganador.swift
//  Agenda_Shuffle
//
//  Created by alumno on 3/5/25.
//

import SwiftUI

var contacto_alterno = ContactoAgenda(nombre: "Aurelio", telefono: "656 610 2345")

struct Pantalla_del_Ganador: View {
    var contacto_a_molestar: ContactoAgenda
    let esquinas_redondeadas = CGSize(width: 15, height: 15)
    var body: some View {
        
        VStack(spacing: 25){
            
            ZStack{
                Circle().foregroundColor(Color.orange)
                    .frame(width: 170)

                Icono(tamaño: 100, ruta_icono: "plus", padding: 10)
                    .foregroundStyle(.indigo)
            }
            
            VStack{
                Text(contacto_a_molestar.nombre)
                    .font(.system(size: 30, weight: .heavy))
                Text(contacto_a_molestar.telefono)
                    .font(.system(size: 20, weight: .regular))
            }
            

            
        }
        .padding(40)
        .background(Color.purple)
        .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
        
        
    }
}

#Preview {
    Pantalla_del_Ganador(contacto_a_molestar: contacto_alterno)
}
