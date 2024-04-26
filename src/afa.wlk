import jugador.*
import estadio.*

object afa {
	var precioEntrada = 10000
	const costoLogistica = 10000000
	var gananciaNetaPorPartido
	var estadoArcas = 0
	var inflacion = 0
	
	method entradasAVender(estadio, jugador) = estadio.capacidad() * jugador.popularidad()
	
	method gananciaNetaPorPartido() = gananciaNetaPorPartido
	
	method estadoArcas() = estadoArcas
	
	method setInflacion(cantidad) {
		inflacion = cantidad / 100
	}
	
	method precioEntrada() {
		precioEntrada += precioEntrada * inflacion
		return precioEntrada
	}
	
	method recaudacion(estadio, jugador) = self.entradasAVender(estadio, jugador) * self.precioEntrada()
	
	method costosPorElPartido(estadio, jugador) = costoLogistica + jugador.viaticos() + estadio.valorAlquiler()
	
	method realizarPartidoHomenaje(estadio, jugador) {
		gananciaNetaPorPartido = self.recaudacion(estadio, jugador) - self.costosPorElPartido(estadio, jugador)
		estadoArcas += self.recaudacion(estadio, jugador) - self.costosPorElPartido(estadio, jugador)
	}




}