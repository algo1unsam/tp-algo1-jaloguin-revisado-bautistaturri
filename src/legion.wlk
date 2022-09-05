import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var miembros = [ ]

	method capacidadSusto() {
		return miembros.sum({ chico => chico.capacidadSusto() })
	}

	method agregarMiembros(nuevosMiembros) {
		miembros.addAll(nuevosMiembros)
	}

	method lider() {
		return miembros.max({ chico => chico.capacidadSusto() })
	}

	method caramelos() {
		return miembros.sum({ chico => chico.caramelos() })
	}
	
	method recibirCaramelos(cant) {
		self.lider().recibirCaramelos(cant)
	}

	method todosLosDisfraces() {
		return miembros.map({ chico => chico.disfraces().asSet() }).flatten()
	}

	method disfracesRepetidos() {
		return self.todosLosDisfraces().filter({ x => self.todosLosDisfraces()})
	}

	
	method sacarseloATodos(disfraz) {
		miembros.forEach({ x => x.quitarDisfraz(disfraz) })
	}

											
}


