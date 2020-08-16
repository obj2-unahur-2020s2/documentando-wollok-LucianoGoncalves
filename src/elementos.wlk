//No devuelve nada, es una clase de tipo hogar
class Hogar {
	
	//Propiedad. Tipo de dato número (es un getters y setters)
	var property nivelMugre
	
	//Propiedad. Tipo de dato número (es un getters y setters)
	var property confort

	// Se considera que un hogar _es bueno_ 
	// si su nivel de mugre es la mitad del confort que ofrece, o menos. 
	
	//Tipo: booleano. Devuelve un booleano
	method esBueno() = nivelMugre <= confort / 2
	
	//No devuelve nada
	method fueAtacado(plaga) { //plaga es un objeto (puede ser PlagaCucaracha, PlagaMosquito, PlagaPulgas o PlagaGarrapatas)
		nivelMugre += plaga.nivelDanio()
	}

}

class Mascota {
	//Propiedad. Tipo de dato número (es un getters y setters)
	var property nivelSalud

	//No devuelve nada
	method fueAtacado(plaga) { //plaga es un objeto (puede ser PlagaCucaracha, PlagaMosquito, PlagaPulgas o PlagaGarrapatas)
		if (plaga.transmiteEnfermedad()) {
			nivelSalud -= plaga.nivelDanio()
		}
	}
	
	//Tipo: booleano. Devuelve un booleano
	method esBueno() = nivelSalud > 250

}

class Huerta {
	//Propiedad. Tipo de dato número (es un getters y setters)
	var property capacidadProduccion
	
	//Tipo: booleano. Devuelve un booleano
	method esBueno() {
		return capacidadProduccion > INTA.produccionMinima()
	}

	//No devuelve nada
	method fueAtacado(plaga) { //plaga es un objeto (puede ser PlagaCucaracha, PlagaMosquito, PlagaPulgas o PlagaGarrapatas)
		capacidadProduccion -= plaga.nivelDanio() * 0.1
		if (plaga.transmiteEnfermedad()) {
			capacidadProduccion -= 10
		}
	}

}

object INTA {
	
	//Propiedad. Tipo de dato número (es un getters y setters)
	var property produccionMinima

}

