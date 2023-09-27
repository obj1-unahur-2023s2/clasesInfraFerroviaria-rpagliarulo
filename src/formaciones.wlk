import vagones.* 

class Formacion {
	const property vagones= []
	// new List()
	
	method agregar(vagon) {vagones.add(vagon)}
	
	method cuantosPasajerosPuedeLlevar()= vagones.sum({vagon => vagon.cantidadDePasajeros()})
	
	method cantidadDeVagonesPopulares()= vagones.count({vagon => vagon.esPopular()}) //filter y size tabien
	
	method esFormacionCarguera()= vagones.all({vagon => vagon.esCarguero()}) // vagon.puedeTransportar(1000)
	
	method dispersionDePesos()= (vagones.map({vagon => vagon.pesoMaximo()}).max() - vagones.map({vagon => vagon.pesoMaximo()}).min())
	
	//const maximo = vagones.max(vagon => vagon.pesoMaximo())
	//const minimo = vagones.mix(vagon => vagon.pesoMaximo())
	//return maximo.pesoMaximo() - minimo.pesoMaximo()
	
	
	method totalBanios()= vagones.filter({vagon => vagon.tieneBanio()}).size()
	//  count)
	
	method hacerMantenimiento()= vagones.forEach({vagon => vagon.hacerMantenimiento()})
	
	method estaEquilibradaEnPasajeros() {
		const vagonesConPasajeros= vagones.filter({vagon => vagon.cantidadDePasajeros() >= 1})
		return (vagonesConPasajeros.min() - vagonesConPasajeros.max()) == 20.abs()   
	}
	
	//const pasajeros= self.vagonesSoloDePAsajeros()
	// cons maximo= pasajeros.max (vagon => vagon.cantidadDePAsajeros()}
	// const minimo= pasajeros.min (vagon => vagon.cantidadDePAsajeros)
	//return maximo.cantidadDePasjaeros() - minimo.cantidadDEPAsajeros() <=2
	method estaOrganizada() {
		return not (1..vagones.size()-1).any { idx => vagones.get(idx-1).esDePasajaeros() and vagones.get(idx).esPasajeros()}
	}

}
