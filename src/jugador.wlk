object messi {
	var popularidad = 0.98
	var property viaticos = 5000000

	method popularidad() = popularidad
}

object ronaldo {
	const property popularidad = messi.popularidad() / 2
	var property viaticos = 4000000
}

object mbappe {
	var edad = 25
	const golesEnFinalesDelMundo = 4
	const property popularidad = (edad * 2 + golesEnFinalesDelMundo) / 100
	var property viaticos = 3000000
}