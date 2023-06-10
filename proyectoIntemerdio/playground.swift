import Foundation

class Person{
    
    var name:String
    var age:Int
    
    init(_ name:String, _ age:Int){
        self.name = name
        self.age = age
    }
    
    func saludar() {
        print("Hola soy \(name) y tengo \(age) años")
    }
    
}

class Employee: Person{
    var employeeID: Int
    
    init(_ name: String, _ age: Int, _ employeeID:Int) {
        self.employeeID = employeeID
        super.init(name, age)
    }
    
    override func saludar() {
        print("Hola soy \(name) y tengo \(age) años y mi ID de empleados \(employeeID)")
    }
    
}


let leo = Person("Jonathan Leo", 18)
let miguel = Person("Miguel", 29)

let empleado1 = Employee("Miguel", 29,  106349)

//print(empleado1.saludar())


class Animal{
    var name:String
    
    init(_ name: String){
        self.name = name
    }
    
    func makeSound()-> String {
        //print("El animal hace un sonido")
        return "El animal hace"
    }
    
}

class Dog:Animal{
    override func makeSound()->String {
        //print("Guau Guau!!")
        return "Guau Guau!!"
    }
}

class Cat:Animal{
    override func makeSound()-> String {
        print("Miau Miau!!")
        return "Miau Miau!!"
    }
}

let negro = Dog("Negro")

let michi = Cat("Michi")

//print("el \(negro.name) hace \(negro.makeSound())")

class User{
    var username:String
    var password: String
    var rol: Int
    
    init(username:String, password:String, rol: Int) {
        self.username = username
        self.password = password
        self.rol = rol
    }
    
    // TODO
    func authenticate() -> Bool {
        // logica de auntenticacion real
        return username == "user123" && password == "password"
    }
}

class AdminUser: User{
    
    override func authenticate() -> Bool {
        return rol == 1
    }
    
}

class LoginManager{
    
    let users:[String]
    let passwords:[String]
    
    init(users:[String], passwords:[String]) {
        self.users = users
        self.passwords = passwords
    }
    
    func login(username: String, password:String)->Bool {
        if let index = users.firstIndex(of: username){
            if passwords[index] == password{
                print("Inicio exitoso")
                return true
            }
        }
        print("Credenciales inválidas")
        return false
    }
}

let users = ["user123", "admin"]
let passwords = ["password", "admin123"]

let loginManager = LoginManager(users: users, passwords: passwords)



let usuario = User(username: "user1234", password: "password", rol: 2)

let admin = AdminUser(username: "admin", password: "admin123", rol: 1)

//.login(username: usuario.username, password: usuario.password)





