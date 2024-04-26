object bombonera {

	const property capacidad = 50000
	var property valorAlquiler = 7000000

}

object monumental {

	var property estaEnRemodelacion = true
	var capacidad
	var property valorAlquiler = 8000000

	method capacidad() {
		capacidad = if (self.estaEnRemodelacion()) 66000 else 86000
		return capacidad
	}

}

