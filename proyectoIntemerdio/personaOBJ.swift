//
//  personaOBJ.swift
//  proyectoIntemerdio
//
//  Created by Miguel Gómez Díaz on 10/06/23.
//

import Cocoa

class personaOBJ: NSObject {
    
    @objc dynamic var id: Int
    @objc dynamic var name: String
    @objc dynamic var age: Int
    
    init(_ id: Int, _ name: String, _ age: Int) {
        self.id = id
        self.name = name
        self.age = age
    }
    

}
