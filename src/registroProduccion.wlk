object registroProduccion {
	var produccionPorDia = [53,18,49,62,33]	
	
	method cambiarProduccionPorDia(nuevaLista) {
		produccionPorDia = nuevaLista
	}
	
	method algunDiaSeProdujo(cantidad){
		return produccionPorDia.contains(cantidad)
	}

	method maximoValorDeProduccion(){
		return produccionPorDia.max()
	}
	
	method valoresDeProduccionPares(){
		return produccionPorDia.filter({numero => numero.even() })
	}

	method produccionEsAcotada(n1,n2){
		return produccionPorDia.any({numeros => numeros.between(n1, n2)})
	}

	method produccionesSuperioresA(cuanto){
		return produccionPorDia.filter({esMayor => esMayor >cuanto})
	}

	method produccionesSumando(n){
		return produccionPorDia.map({suma => suma +n})
	}

	method totalProducido(){
		return produccionPorDia.sum()
	}
	
	method ultimoValorDeProduccion(){
		return produccionPorDia.last()
	}

	method cantidadProduccionesMayorALaPrimera(){
		return self.produccionesSuperioresA(produccionPorDia.first())
	}
}
