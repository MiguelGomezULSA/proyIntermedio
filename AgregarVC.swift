//
//  AgregarVC.swift
//  proyectoIntemerdio
//
//  Created by Miguel Gómez Díaz on 10/06/23.
//

import Cocoa

class AgregarVC: NSViewController {
    
    @IBOutlet weak var vc: ViewController!
    var flag:Bool = false
    var posicion: Int!

    //IBOutlets
    @IBOutlet weak var id: NSTextField!
    @IBOutlet weak var name: NSTextField!
    @IBOutlet weak var age: NSTextField!
    @IBOutlet weak var addBtn: NSButton!
    @IBOutlet weak var updateBtn: NSButton!
    //
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBtn.isHidden = !flag
        addBtn.isHidden = flag
        
        if flag{
            print(posicion)
            print(posicion!)
            print(vc.clientLog[posicion])
            id.integerValue = vc.clientLog[posicion!].id
            name.stringValue = vc.clientLog[posicion!].name
            age.integerValue = vc.clientLog[posicion!].age
        }
    }
    
    
    @IBAction func add(_ sender: NSButton) {
        vc.clientLog.append(personaOBJ(id.integerValue, name.stringValue, age.integerValue))
        
        dismiss(self)
    }
    
    @IBAction func update(_ sender: NSButton) {
        
        vc.clientLog[posicion] = (personaOBJ(id.integerValue, name.stringValue, age.integerValue))
        
        dismiss(self)
        
    }
    
    
}
