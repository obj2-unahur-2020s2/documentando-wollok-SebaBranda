class Hogar {

	var property nivelMugre #propiedades de la clase
	var property confort #propiedades de la clase

	// Se considera que un hogar _es bueno_ 
	// si su nivel de mugre es la mitad del confort que ofrece, o menos. 
	method esBueno() = nivelMugre <= confort / 2 #consulta - devuelve un booleano

	method fueAtacado(plaga) { #indicacion - no devuelve nada
		nivelMugre += plaga.nivelDanio()
	}

}

class Mascota {

	var property nivelSalud #propiedades de la clase

	method fueAtacado(plaga) { #indicacion - no devuelve nada
		if (plaga.transmiteEnfermedad()) {
			nivelSalud -= plaga.nivelDanio()
		}
	}

	method esBueno() = nivelSalud > 250 #consulta - devuelve un booleano

}

class Huerta {

	var property capacidadProduccion

	method esBueno() { #consulta - devuelve un booleano
		return capacidadProduccion > INTA.produccionMinima()
	}

	method fueAtacado(plaga) { #indicacion - no devuelve nada
		capacidadProduccion -= plaga.nivelDanio() * 0.1
		if (plaga.transmiteEnfermedad()) {
			capacidadProduccion -= 10
		}
	}

}-

object INTA {

	var property produccionMinima #propiedades del objeto

}

