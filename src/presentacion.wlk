import musicos.*

object lunaPark {
	var fecha = new Date(20,4,2017)
	var musicos = [luisAlberto,joaquin,lucia]
	var capacidad = 9290
	
	method fecha(){
		return fecha
	}
	
	method musicos(){
		return musicos
	}
	
	method agregarUnMusico(unMusico){
		musicos.add(unMusico)
	}
	
	method quitarUnMusico(unMusico){
		musicos.remove(unMusico)
	}
	
	method capacidad(){
		return capacidad
	}
	
	method capacidad(unNumero){
		capacidad = unNumero
		
	}
	
	method costo(){
		return musicos.sum({ unMusico => unMusico.cuantoCobra(self) })
	}
	
	method esConcurrido(){
		return capacidad > 5000
	}
	
	method laPresentacionEsAntesDeSeptiembre(){
		return fecha <= new Date(1,09,2017)
	}
}

object trastienda {
	var fecha = new Date(15,11,2017)
	var musicos = [luisAlberto,joaquin,lucia] 
	
	method fecha(){
		return fecha
	}
	
	method fecha(unaFecha){
		fecha = unaFecha
	}
	
	method musicos(){
		return musicos
	}
	
	method agregarUnMusico(unMusico){
		musicos.add(unMusico)
	}
	
	method quitarUnMusico(unMusico){
		musicos.remove(unMusico)
	}
	
	method capacidad(){
		if(self.esSabado()){
			return  700
		}
		else
		
			return 400
	}
	
	method esSabado(){
		return (fecha).dayOfWeek() == 6
	}
	
	method costo(){
		return musicos.sum({ unMusico => unMusico.cuantoCobra(self) })
	}
	
	method esConcurrido(){
		return self.capacidad() > 5000
	}
	
	method laPresentacionEsAntesDeSeptiembre(){
		return fecha <= new Date(1,09,2017)
	}
	
}