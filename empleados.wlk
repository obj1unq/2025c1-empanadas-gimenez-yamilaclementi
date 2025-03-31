//Escribir aqui los objetos

object galvan {

    var sueldo = 15000
    var deuda = 0
    var dinero = 0

//Getter
    method sueldo() {
        return sueldo
    }
//  Setter
    method sueldo(_sueldo){
        sueldo = _sueldo
    }

    method cobrar() {
        dinero = dinero + self.sueldo()
        self.pagarDeuda()
    }

    method gastar(cuanto) {
        if (dinero < cuanto) {
            deuda = deuda + (cuanto - dinero) 
            dinero = 0 
        }
        else
            dinero = dinero - cuanto
    }

    method deuda() {
        return deuda
    }

    method pagarDeuda() {
        if (dinero >= deuda) {
            dinero = dinero - deuda
            deuda = 0
        }
        else 
            deuda = deuda - dinero 
        //    dinero = 0 //No deberia entrar a esta seccion pero asi y todo me devuelve 0
    }

    method dinero() {
        return dinero
    }
}

object baigorria {

    var cantidadDeEmpanadasVendidas = 0
    var totalCobrado = 0

    method cantidadDeEmpanadasVendidas() {
        return cantidadDeEmpanadasVendidas
    }

    method venderEmpanadas(cantidad) {
        cantidadDeEmpanadasVendidas = cantidadDeEmpanadasVendidas + cantidad
    }
    
    method sueldo() {
        return cantidadDeEmpanadasVendidas * 15
    }

     method cobrar() {
       totalCobrado = totalCobrado + self.sueldo()
       cantidadDeEmpanadasVendidas = 0
    }

    method totalCobrado() {
        return totalCobrado
    }
}


object gimenez {
    var fondoParaSueldos = 300000 

    method fondoParaSueldos() {
        return fondoParaSueldos
    }

    method abonarSueldo(empleado) {
        fondoParaSueldos = fondoParaSueldos - empleado.sueldo()
        empleado.cobrar()
    }

}
