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
                    .frame(width: 200)

                Image("PhotoCat")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 270, alignment: .center)
                    .clipShape(Circle())
            }
            
            VStack{
                Text(contacto_a_molestar.nombre)
                    .font(.system(size: 40, weight: .heavy))
                    .foregroundStyle(.mint)
                Text(contacto_a_molestar.telefono)
                    .font(.system(size: 20, weight: .regular))
                    .foregroundStyle(.mint)
            }

        }
        .padding(40)
        .background(Color.indigo)
        
        .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
        .shadow(color: .black, radius: 10, x: 0, y: 5)
        
    }
}

#Preview {
    Pantalla_del_Ganador(contacto_a_molestar: contacto_alterno)
}
