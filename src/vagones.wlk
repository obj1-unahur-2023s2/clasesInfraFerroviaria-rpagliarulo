class VagonDePasajeros {

	var property estaOrdenado= true
	const property tieneBanios
	const property largo
	const property ancho
	
	method cantidadDePasajeros() {
		const pasajeros= if (ancho <= 3) {8 * largo} else {10* largo}       
		return if (not estaOrdenado) {0.max(pasajeros -15)} else {pasajeros}
		}

	method carga()= if (tieneBanios){300} else {600} 

	method pesoMax()= 2000 + 80 * self.cantidadDePasajeros() + self.carga() 
	
	method esPopular()= self.cantidadDePasajeros() > 50 
	
	method esVagonCarguero()= self.carga() >= 1000
	method hacerMantenimiento() {estaOrdenado= true}
}

class VagonDeCarga{
	const property cargaMaximaIdeal
	var property maderasSueltas
	
	method cantidadDePasajeros()= 0
	method pesoMaximo()= 1500 + self.carga()
	method carga()= 0.max(cargaMaximaIdeal - 400 * maderasSueltas)
	method tieneBanios()= false 
	
	method esPopular()= false 
	
	method esVagonCarguero()= self.carga() >= 1000
	method hacerMantenimiento() {0.max(maderasSueltas - 2)}
}

class VagonDeDormitorio {
	const property cantidadCompartimientos
	var property camasPorCompartimiento

	method cantidadDePasajeros()=  cantidadCompartimientos * camasPorCompartimiento
	method pesoMaximo()= 4000 + 80 * self.cantidadDePasajeros() + self.carga()
	method carga()= 1200
	method tieneBanios()= true 
	method esPopular()= self.cantidadDePasajeros() > 50 
	

	method esVagonCarguero()= self.carga() >= 1000
	method hacerMantenimiento() {}
	
	//method puedeTransportar(unValor)= self.carga() >= unValor
}

//instanciar
const pasaj1= new Pasajero(ancho= 2, largo=10, tieneBanios=true)
