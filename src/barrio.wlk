class Barrio {

	const property elementos = []

	method agregarElemento(elemento) {
		elementos.add(elemento)
	}

	method sacarElemento(elemento) {
		elementos.remove(elemento)
	}

	method elementosBuenos() {
		return elementos.count{ e => e.esBueno() }
	}

	method elementosMalos() = elementos.count{ e => not e.esBueno() }

	method esCopado() {
		return self.elementosBuenos() > self.elementosMalos()
	}

}

