object afa {
	var precioEntrada = 10000
	const costoLogistica = 10000000
	var estadoArcas = 0
	
	method entradasAVender() = bombonera.capacidad() * messi.popularidad()
	
	method costoLogistica() = costoLogistica
	
	method estadoArcas() = estadoArcas
	
	method gananciaNeta() = self.entradasAVender() * precioEntrada
	
	method costosPorElPartido() = self.costoLogistica() + messi.viaticos() + bombonera.valorAlquiler()
	
	method realizarPartidoHomenaje() {
		estadoArcas += self.gananciaNeta() - self.costosPorElPartido()
	}
}

object bombonera {
	var capacidad = 50000
	var valorAlquiler = 7000000

	method capacidad() = capacidad
	
	method valorAlquiler() = valorAlquiler
}

object messi {
	var popularidad = 0.98
	var viaticos = 5000000

	method popularidad() = popularidad
	
	method viaticos() = viaticos
}
