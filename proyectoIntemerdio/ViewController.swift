import Cocoa

class ViewController: NSViewController {
    
    @objc dynamic var clientLog:[
        personaOBJ] = [personaOBJ(1, "Miguel", 29),
        personaOBJ(2,"Alejandra",30)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(clientLog[0].name)
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if(segue.identifier == "showSegue"){
            (segue.destinationController as! TablaVC).clientLog = clientLog
            (segue.destinationController as! TablaVC).vcTabla = self
        }
        else if(segue.identifier == "addSegue"){
            (segue.destinationController as! AgregarVC).vc = self
        }
    }
    
    


}

