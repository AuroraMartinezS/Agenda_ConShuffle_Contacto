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
    ContactoAgenda(nombre: "Karen", telefono: "656 345 1234"),
    ContactoAgenda(nombre: "Paola", telefono: "656 345 1234"),
    ContactoAgenda(nombre: "Marco", telefono: "656 345 1234"),
    ContactoAgenda(nombre: "Antonio", telefono: "656 345 1234")
]

struct PantallaAgenda: View {
    var largo = UIScreen.main.bounds.width
    var ancho = UIScreen.main.bounds.height
    
    @State var mostrar_pantalla_agregar_contacto: Bool = false;
    @State var contactos_actuales: [ContactoAgenda] = [
        ContactoAgenda(nombre: "Antonio", telefono: "656 345 1234"),
        ContactoAgenda(nombre: "Ana", telefono: "656 098 0987"),
        ContactoAgenda(nombre: "Juan", telefono: "656 098 0987"),
        ContactoAgenda(nombre: "Daniel", telefono: "656 098 0987"),
        ContactoAgenda(nombre: "Sofia", telefono: "656 098 3456")];
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                /*ForEach(0...45, id: \.self){ _ in
                 Contacto_Preview()
                 }
                 }*/
                ForEach(contactos_actuales) { contacto in
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
                print("Falta implementar la seccion de agregar contacto.")
                mostrar_pantalla_agregar_contacto.toggle()
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
            
        }.background(Color.purple)
        .sheet(isPresented: $mostrar_pantalla_agregar_contacto){
            Pantalla_Agregar_Contacto(boton_salir: {
                mostrar_pantalla_agregar_contacto.toggle()
            },
                 boton_agregar: { nombre, numero in
                let contacto_nuevo = ContactoAgenda(nombre: nombre, telefono: numero)
                contactos_actuales.append(contacto_nuevo)
                mostrar_pantalla_agregar_contacto.toggle()
                
            }
            )
        }
    }
}

#Preview {
    PantallaAgenda()
}
