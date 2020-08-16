//No devuelve nada, es una clase de tipo barrio
class Barrio {
	//una colección de elementos.
	const property elementos = []
	
	//no devuelve nada
	method agregarElemento(elemento) {
		elementos.add(elemento)
	}
	
	//no devuelve nada
	method sacarElemento(elemento) {
		elementos.remove(elemento)
	}
	
	//Tipo: numero. Devuelve un número (cantidad de elementos buenos)
	method elementosBuenos() {
		return elementos.count{ e => e.esBueno() }
	}
	
	//Tipo: numero. Devuelve un número (cantidad de elementos malos)
	method elementosMalos() = elementos.count{ e => not e.esBueno() }
	
	//Tipo: booleano. Devuelve un booleano
	method esCopado() {
		return self.elementosBuenos() > self.elementosMalos()
	}

}

