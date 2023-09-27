import vagones.* 

class Formacion {
	const property vagones= []
	
	method agregar(vagon) {vagones.add(vagon)}
	
	method cantidadDeVagonesPopulares()= vagones.filter({vagon => vagon.esPopular()}).size()
	
	method esFormacionCarguera()= vagones.all({vagon => vagon.esCarguero()})
	
	method dispersionDePesos()= (vagones.map({vagon => vagon.pesoMaximo()}).max() - vagones.map({vagon => vagon.pesoMaximo()}).min())
	
	method totalBanios()= vagones.map({vagon => vagon.tieneBanio()}).size()
	
	method hacerMantenimiento()= vagones.forEach({vagon => vagon.hacerMantenimiento()})
	
	method estaEquilibradaEnPasajeros() {
		const vagonesConPasajeros= vagones.filter({vagon => vagon.cantidadDePasajeros() >= 1})
		return (vagonesConPasajeros.min() - vagonesConPasajeros.max()) == 20.abs()   
	}
	
	method estaOrganizada() {}

}
