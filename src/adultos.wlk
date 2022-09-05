import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 22
	//aca planteo un metodo para que mirca se pueda atemorizar
	method serAtemorizadoPor(alguien){
	alguien.recibirCaramelos(self.caramelosAEntregar(alguien))
		tolerancia = tolerancia - 1
	}	
	method caramelosEntregar(alguien){
	return (alguien.capacidadSusto() - tolerancia)
	
	}
	method tolerancia(){
		return tolerancia
	}	
}
