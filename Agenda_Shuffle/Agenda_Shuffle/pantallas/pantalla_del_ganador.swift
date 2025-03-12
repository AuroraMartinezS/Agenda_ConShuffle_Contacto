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
    var color_contenedor = Color(red: 0.675, green: 0.753, blue: 0.902)
    let esquinas_redondeadas = CGSize(width: 15, height: 15)
    
    var color_letras_nombre = Color(red: 0.212, green: 0.243, blue: 0.439)
    var color_letras_tel = Color(red: 0.275, green: 0.357, blue: 0.541)
    var body: some View {
        
        
        
        VStack(spacing: 25){
            
            ZStack{
                Circle().foregroundColor(Color.indigo)
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
                    .foregroundStyle(color_letras_nombre)
                Text(contacto_a_molestar.telefono)
                    .font(.system(size: 20, weight: .regular))
                    .foregroundStyle(color_letras_tel)
            }
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundStyle(color_letras_nombre)
                    
                Circle()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(.indigo.gradient)
                Image(systemName: "phone.fill")
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
            }
            
        }
        .padding(40)
        .background(color_contenedor.gradient)
        .border(Color.indigo)
        
        .clipShape(RoundedRectangle(cornerSize: esquinas_redondeadas))
        .shadow(color: .black, radius: 10, x: 0, y: 5)
        
    }
}

#Preview {
    Pantalla_del_Ganador(contacto_a_molestar: contacto_alterno)
}
