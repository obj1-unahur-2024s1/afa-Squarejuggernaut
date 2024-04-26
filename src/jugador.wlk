object messi {
	var popularidad = 0.98
	var property viaticos = 5000000

	method popularidad() = popularidad
	
	method pasaronCosas() {
		popularidad -= 0.08
	}
}

object ronaldo {
	const property popularidad = messi.popularidad() / 2
	var property viaticos = 4000000
	
	method pasaronCosas() {
		viaticos /= 2
	}
}

object mbappe {
	var edad = 25
	const golesEnFinalesDelMundo = 4
	const property popularidad = (edad * 2 + golesEnFinalesDelMundo) / 100
	var property viaticos = 3000000
	
	method pasaronCosas() {
		edad += 1
	}
	method edad() = edad
}