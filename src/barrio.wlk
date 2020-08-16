class Barrio {

	const property elementos = [] #propiedad de la clase - lista

	method agregarElemento(elemento) { #indicacion - agrega elementos a la lista
		elementos.add(elemento)
	}

	method sacarElemento(elemento) { #indicacion - saca elementos a la lista
		elementos.remove(elemento)
	}

	method elementosBuenos() { #consulta - devuelve un numero
		return elementos.count{ e => e.esBueno() }
	}

	method elementosMalos() = elementos.count{ e => not e.esBueno() } #consulta - devuelve un numero

	method esCopado() {
		return self.elementosBuenos() > self.elementosMalos() #consulta - devuelve un booleano
	}

}

