//chicos
import elementos.*
import legion.*


object macaria {
	nivelIra = 10
	//como lleva disfraces defino un array
	disfraces = []
	
	method capacidadEnojar(){
		return nivelIra + disfraces.sum({disfraz => disfraz.nivelSusto()}) 
	}
	method recibirCaramelos(cantidad) {
		caramelos = caramelos + (cantidad*3).div(4)
	}
	method caramelos() {
		return caramelos
	}
	method elementoMenosEfectivo() {
		return disfraces.min({ disfraz => disfraz.nivelSusto() })
	}
	method disfrazar(elemento) {
		disfraces.add(elemento)
	}

	method quitarDisfraz(elemento) {
		disfraces.remove(elemento)
	}

	method dejarDeUsarMenosEfectivo() {
		self.quitarDisfraz(self.elementoMenosEfectivo())
	}

	method disfraces() {
		return disfraces
	}
}


object pancracio {
	var grito = 'buuuuu'
	var disfraz = 'mascaraDeDracula'
	caramelos = 0

	method capacidadSusto {
	grito.size() - 1 + disfraz.nivelSusto()
	
	}

	method recibirCaramelos(cant) {
		caramelos = caramelos + cant
	}

	method caramelos() {
		return caramelos
	}

	method disfrazar(nuevoElemento) {
		disfraz = nuevoElemento
	}

	method quitarDisfraz(_) {
		grito = grito + "uu"
	}

	method disfraces() {
		return [disfraz]
	}
	

}

object mariana {
	var disfraces = [ ]
	
	method capacidadSusto() {
		return disfraces.count({ disfraz => disfraz.nivelSusto()>5 })
	}

	method recibirCaramelos(cant) {
		caramelos = caramelos + cant
	}

	method caramelos() {
		return 0
	}
	method disfrazar(elemento) {
		disfraces.add(elemento)
	}
	method disfraces() {
		return disfraces 
	}
	method quitarDisfraz(elemento) {
		disfraces.remove(elemento)
	}

	
}

object rodrigo {
	var disfraces = [ ]
	var tieneMiedo = True

	method estaAsustado(){
	return tieneMiedo
	}	
	method capacidadSusto() {
		return disfraces.count({ disfraz => disfraz.nivelSusto()>15 })
	}

	method caramelos() {
		return 0
	}
	method disfrazar(elemento) {
		disfraces.add(elemento)
	}
	method disfraces() {
		return disfraces 
	}
	method quitarDisfraz(elemento) {
		disfraces.remove(elemento)
	}

	
}
