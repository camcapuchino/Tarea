/*
 Alumno: Samuel Isaac Bernal Carranza
 Tarea: Velocimetro de un automóvil digital
 Curso: Swift: programar para iOS
 
*/

import UIKit

enum Velocidades : Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = Velocidades.Apagado
        
    }
        
}

class Auto{
    var velocidad : Velocidades

    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        var actual : Int?
        var velocidadEnCadena : String?
        
        if velocidad.rawValue == 0{
            actual = Velocidades.Apagado.rawValue
            velocidadEnCadena = "Apagado"
            self.velocidad = Velocidades.VelocidadBaja
        
        }else if velocidad.rawValue == 20{
            actual = Velocidades.VelocidadBaja.rawValue
            velocidadEnCadena = "Velocidad baja"
            self.velocidad = Velocidades.VelocidadMedia
            
        }else if velocidad.rawValue == 50{
            actual = Velocidades.VelocidadMedia.rawValue
            velocidadEnCadena = "Velocidad baja"
            self.velocidad = Velocidades.VelocidadAlta
        
        }else if velocidad.rawValue == 120{
            actual = Velocidades.VelocidadAlta.rawValue
            velocidadEnCadena = "Velocidad Alta"
            self.velocidad = Velocidades.VelocidadMedia
            
        }
        
        let pantalla = (actual, velocidadEnCadena)
        return(pantalla.0!, pantalla.1!)
        
    }
    
}

var auto = Auto()

for i in 1...20{
    print(auto.cambioDeVelocidad())
}

