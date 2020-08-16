//No devuelve nada, es una clase de tipo plaga
class Plaga {
	
	//Propiedad. Tipo de dato número (es un getters y setters)
	var property poblacion
	
	//Tipo: booleano. Devuelve un booleano
	method transmiteEnfermedad() = poblacion >= 10
	
	//No devuelve nada
	method atacar(elemento){
		poblacion *= 1.1
		elemento.fueAtacado(self)
	}
}

//No devuelve nada, es una sub clase que hereda de plaga
class PlagaCucaracha inherits Plaga {

	//Propiedad. Tipo de dato número (es un getters y setters)
	var property pesoPromedio

	//Tipo: número. Devuelve un número
	method nivelDanio() {
		return poblacion / 2
	}

	//Tipo: booleano. Devuelve un booleano
	override method transmiteEnfermedad() {
		return super() and pesoPromedio >= 10
	}

	//No devuelve nada
	override method atacar(elemento) {
		super(elemento)
		pesoPromedio += 2
	}

}

//No devuelve nada, es una sub clase que hereda de plaga
class PlagaMosquito inherits Plaga {

	//Tipo número. Devuelve un número.
	method nivelDanio() {
		return poblacion
	}
	
	//Tipo: booleano. Devuelve un booleano
	override method transmiteEnfermedad() {
		return super() and poblacion % 3 == 0
	}

}

//No devuelve nada, es una sub clase que hereda de plaga
class PlagaPulgas inherits Plaga {

	//Tipo número. Devuelve un número.
	method nivelDanio() = poblacion * 2

}

//No devuelve nada, es una sub clase que hereda de PlagaPulgas
class PlagaGarrapatas inherits PlagaPulgas {
	
	//No devuelve nada
	override method atacar(elemento) {
		poblacion *= 1.2
		elemento.fueAtado(self)
	}

}

