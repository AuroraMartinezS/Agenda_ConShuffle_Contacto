//
//  PantallaAgenda.swift
//  Agenda_Shuffle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI


let contactos = [
    ContactoAgenda(nombre: "Marisol", telefono: "656 098 0987"),
    ContactoAgenda(nombre: "Ana", telefono: "656 098 0987"),
    ContactoAgenda(nombre: "Juan", telefono: "656 098 0987"),
    ContactoAgenda(nombre: "Daniel", telefono: "656 098 0987"),
    ContactoAgenda(nombre: "Sofia", telefono: "656 098 3456"),
    ContactoAgenda(nombre: "Pepe", telefono: "656 123 3456"),
    ContactoAgenda(nombre: "Karen", telefono: "656 345 1234")
]

struct PantallaAgenda: View {
    var largo = UIScreen.main.bounds.width
    var ancho = UIScreen.main.bounds.height
    
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                /*ForEach(0...45, id: \.self){ _ in
                 Contacto_Preview()
                 }
                 }*/
                ForEach(contactos) { contacto in
                    //Text("\(contacto.nombre)")
                    ContactoPrevista(contacto_a_mostrar: contacto, al_pulsar: {
                        print("Te envía un saludo \(contacto.nombre) desde la pantalla de agenda")
                    })
                    
                }
            }
            .frame(alignment: Alignment.center)
            .padding(10)
            .background(Color.cyan)
        }
        .background(Color.indigo)
        
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundStyle(.orange)
                Circle()
                    .frame(width: 65, height: 65)
                    .foregroundStyle(.mint)
                Image(systemName: "plus")
                    .foregroundStyle(.indigo)
                    //.offset(x: 0, y: -25)
            }
            .padding(15)
            .onTapGesture {
                print("Falta implementar esta parte")
            }
            
            Spacer();
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundStyle(.orange)
                Circle()
                    .frame(width: 65, height: 65)
                    .foregroundStyle(.mint)
                Image(systemName: "shuffle")
                    .foregroundStyle(.indigo)
                    //.offset(x: 0, y: -25)
            }
            .padding(15)
            .onTapGesture {
                print("Lanzar un intend para iniciar la llamada")
            }
            
            /*Text("Obtener persona a molestar")
                .onTapGesture {
                    print("")
                }*/
            //Image(systemName: "plus.circle.fill")
            
        }
    }
}

#Preview {
    PantallaAgenda()
}
