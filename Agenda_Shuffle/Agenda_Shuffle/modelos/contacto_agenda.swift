//
//  contacto_agenda.swift
//  Agenda_Shuffle
//
//  Created by alumno on 2/26/25.
//

import SwiftUI


struct ContactoAgenda: Identifiable {
    
    var nombre: String
    var telefono: String

    var imagen: String = "PhotoCat"
    
    var id: String { nombre }
    
}

/*
var nombre = "Pepito Veráz"

var nombre: set{
    let nombre_validado = filtrar_palabras(value):
    _nombre = nombre_validado
} get{
    return _nombre.split(" ")[0]
}

*/
