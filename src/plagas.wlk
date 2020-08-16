class Plaga {
	var property poblacion #Numero
	
	method transmiteEnfermedad() = poblacion >= 10 #booleano
	
	method atacar(elemento :(hogar|huerta|mascota)){
		poblacion *= 1.1
		elemento.fueAtacado(self)
	}
}

class PlagaCucaracha inherits Plaga {

	var property pesoPromedio #Numero

	method nivelDanio() { #Numero
		return poblacion / 2
	}

	override method transmiteEnfermedad() { #booleano 
		return super() and pesoPromedio >= 10
	}

	override method atacar(elemento:(hogar|huerta|mascota)) { 
		super(elemento)
		pesoPromedio += 2
	}

}

class PlagaMosquito inherits Plaga {

	method nivelDanio() { #Numero
		return poblacion
	}

	override method transmiteEnfermedad() { #Booleano
		return super() and poblacion % 3 == 0
	}

}

class PlagaPulgas inherits Plaga {

	method nivelDanio() = poblacion * 2 #Numero

}

class PlagaGarrapatas inherits PlagaPulgas { 

	override method atacar(elemento:(hogar|huerta|mascota)) { 
		poblacion *= 1.2
		elemento.fueAtado(self)
	}

}

