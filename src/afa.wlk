object afa {
	var precioEntrada = 10000
	const costoLogistica = 10000000
	const gananciaNetaPorPartido = self.recaudacion() - self.costosPorElPartido()
	var estadoArcas = 0
	
	method entradasAVender() = bombonera.capacidad() * messi.popularidad()
	
	method costoLogistica() = costoLogistica
	
	method gananciaNetaPorPartido() = gananciaNetaPorPartido
	
	method estadoArcas() = estadoArcas
	
	method recaudacion() = self.entradasAVender() * precioEntrada
	
	method costosPorElPartido() = self.costoLogistica() + messi.viaticos() + bombonera.valorAlquiler()
	
	method realizarPartidoHomenaje() {
		estadoArcas += self.recaudacion() - self.costosPorElPartido()
	}
}

object bombonera {
	const property capacidad = 50000
	var property valorAlquiler = 7000000
}

object messi {
	var popularidad = 0.98
	var property viaticos = 5000000

	method popularidad() = popularidad
}
