//aca van los disfraces

object trajeBruja {
	method nivelSusto(){
	return 10
	}

}

object barba{
	var long = 2
	method nivelSusto(){
	return long * 5
	}
}	

object mascaraDracula{
	var tamanio = 2
	method nivelSusto(){
	return tamanio * 2

	}
				
}
object mascaraFrankenstein {
	method nivelSusto() {
		return 22
	}
}
object mascaraPolitico {
	var politico = biden
	
	method nivelSusto() {
		return politico.promesas() 
	}
}
object biden {
	method promesas() {
		return 10
	}
}
