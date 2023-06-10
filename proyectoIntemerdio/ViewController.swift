//
//  ViewController.swift
//  proyectoIntemerdio
//
//  Created by Miguel Gómez Díaz on 10/06/23.
//

import Cocoa

class ViewController: NSViewController {
    
    @objc dynamic var clientLog:[
        personaOBJ] = [personaOBJ(1, "Miguel", 29),
        personaOBJ(2,"Alejandra",30)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(clientLog[0].name)

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

