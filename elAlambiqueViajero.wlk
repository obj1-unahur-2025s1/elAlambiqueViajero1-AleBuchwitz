object luke {
    var recuerdoUltimoViaje = null
    var cantLugaresQueVisito = 0

  method viajar(unDestino, vehiculo) {
    recuerdoUltimoViaje = unDestino.recuerdo()
    cantLugaresQueVisito = cantLugaresQueVisito + 1
    vehiculo.consumeCombustible(10)
  }
  method recuerdoUltimoViaje() = recuerdoUltimoViaje
  method cantidadDeLugaresQueVisito() = cantLugaresQueVisito 
}
object alambiqueVeloz {
  var combustible = 100
  var esRapido = true

  method consumeCombustible(cantidad) {
    combustible = combustible - cantidad
  }
  method dejaDeSerRapido() {
    esRapido = false
  }
  method combustible() = combustible
  method esRapido() = esRapido 
}
//recuerdos
object llaveroTorreEiffel {
  
}
object mate {
  var presidente = true

  method vieneConYerba() = presidente
  method cambiaPresidente() {
    presidente = !presidente
  }
}
object recuerdoDeBagdad {
  
}
object recuerdoDeLasVegas {
  method homenaje(ciudad) = ciudad.recuerdo()
}
//destinos
object paris {
  method recuerdo() = llaveroTorreEiffel
  method puedeLlegar(vehiculo) = vehiculo.combustible() >= 20
}
object buenosAires {
  method recuerdo() = mate.vieneConYerba()
  method puedeLlegar(vehiculo) = vehiculo.esRapido()
}
object bagdad {
  method recuerdo() = recuerdoDeBagdad
  method puedeLlegar(vehiculo) = true
}
object lasVegas {
    var ciudadHomenajeada = null

  method homenajearACiudad(ciudad) {
    ciudadHomenajeada = ciudad
  }
  method recuerdo() = recuerdoDeLasVegas.homenaje(ciudadHomenajeada)
  method puedeLlegar(vehiculo) = ciudadHomenajeada.puedeLlegar(vehiculo) 
}