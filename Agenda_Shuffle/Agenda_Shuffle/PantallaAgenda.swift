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

enum PantallasDisponibles: String, Identifiable{ //NUEVO
    case pantalla_agregar, pantalla_shuffle
    
    var id: String{rawValue}
}

struct PantallaAgenda: View {
    var largo = UIScreen.main.bounds.width
    var ancho = UIScreen.main.bounds.height
    
    @State var mostrar_pantalla_agregar_contacto: Bool = false;
    @State var mostrar_pantalla_shuffle: Bool = false;
    
    @State var pantalla_a_mostrar: PantallasDisponibles? //NUEVO
    
    @State private var contacto_seleccionado_shuffle: ContactoAgenda?
    
    @State var contactos_actuales: [ContactoAgenda] = [
        ContactoAgenda(nombre: "Antonio", telefono: "656 345 1234"),
        ContactoAgenda(nombre: "Ana", telefono: "656 098 0987"),
        ContactoAgenda(nombre: "Juan", telefono: "656 098 0987"),
        ContactoAgenda(nombre: "Daniel", telefono: "656 098 0987"),
        ContactoAgenda(nombre: "Sofia", telefono: "656 098 3456"),
        ContactoAgenda(nombre: "Pepe", telefono: "656 091 1256")];
    
    var body: some View {
        NavigationStack{
            ScrollView {
                Text("Lista de Contactos")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .foregroundStyle(.indigo)
                VStack(spacing: 10) {
                    ForEach(contactos_actuales) { contacto in
                        NavigationLink{
                            Text("Hola Mundo")
                        }label: {
                            ContactoPrevista(contacto_a_mostrar: contacto, al_pulsar: {
                                print("Te envía un saludo \(contacto.nombre) desde la pantalla de agenda")
                            })
                        }
 
                    }
                }
                .frame(alignment: Alignment.center)
                .padding(5)
                .background(Color.white)
            }.padding(20)
        }

        
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundStyle(.teal)
                Circle()
                    .frame(width: 65, height: 65)
                    .foregroundStyle(.mint.gradient)
                Image(systemName: "plus")
                    .font(.system(size: 30))
                    .foregroundStyle(.indigo)
            }
            .padding(15)
            .onTapGesture {
                /*mostrar_pantalla_agregar_contacto.toggle()*/
                pantalla_a_mostrar = PantallasDisponibles.pantalla_agregar
            }
            
            Spacer();
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .foregroundStyle(.teal)
                    
                Circle()
                    .frame(width: 65, height: 65)
                    .foregroundStyle(.mint.gradient)
                Image(systemName: "shuffle")
                    .font(.system(size: 30))
                    .foregroundStyle(.indigo)
            }
            .padding(15)
            .onTapGesture {
                pantalla_a_mostrar = PantallasDisponibles.pantalla_shuffle
                
            }
            
        }.background(Color.indigo.gradient)
        /*.sheet(isPresented: $mostrar_pantalla_agregar_contacto){
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
        .sheet(isPresented: $mostrar_pantalla_shuffle){
            if let contacto = contacto_seleccionado_shuffle{
                Pantalla_del_Ganador(contacto_a_molestar: contacto)
            }
        }*/
        .sheet(item: $pantalla_a_mostrar){ pantalla in
            switch (pantalla){
            case .pantalla_agregar:
                Pantalla_Agregar_Contacto(boton_salir: {
                    mostrar_pantalla_agregar_contacto.toggle()
                },
                     boton_agregar: { nombre, numero, imagen_seleccionada in
                    let contacto_nuevo = ContactoAgenda(nombre: nombre, telefono: numero, imagen: imagen_seleccionada)
                    contactos_actuales.append(contacto_nuevo)
                    pantalla_a_mostrar = nil
                    
                }
                    
                )
            case .pantalla_shuffle:
                Pantalla_del_Ganador(contacto_a_molestar: contactos_actuales.randomElement()!)
                
            }
        }
    }
}

#Preview {
    PantallaAgenda()
}
