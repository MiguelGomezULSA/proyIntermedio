//
//  TablaVC.swift
//  proyectoIntemerdio
//
//  Created by Miguel Gómez Díaz on 10/06/23.
//

import Cocoa

class TablaVC: NSViewController {
    
    @IBOutlet var vcTabla: ViewController!
    
    @IBOutlet weak var eliminado: NSTextField!
    var flag: Bool = false
    var index: Int!
    
    @objc dynamic var clientLog: [personaOBJ] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func update(_ sender: NSButton) {
        
        if clientLog.contains(where: {$0.id == eliminado.integerValue}){
            let indices = clientLog.map({$0.id})
            index = indices.firstIndex(of: eliminado.integerValue)!
            print(index)
            dismiss(self)
            performSegue(withIdentifier: "modifySegue", sender: self)
        }
        
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if(segue.identifier == "modifySegue"){
            (segue.destinationController as! AgregarVC).vc = vcTabla
            flag = true
            (segue.destinationController as! AgregarVC).flag = flag
            (segue.destinationController as! AgregarVC).posicion = index!
            print(index!)
            
        }
    }
    
}
