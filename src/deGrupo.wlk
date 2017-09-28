import musico.*

class DeGrupo inherits Musico {
	
	constructor(unGrupo,losAlbumes,unaHabilidad,cantidadAumentar) = super(unGrupo,losAlbumes,unaHabilidad){
		self.aumentarHabilidad(cantidadAumentar)
	}
		
	method interpretaBienLaCancion(unaCancion){
		return unaCancion.laCancionEsLarga()
	}
	
	method cuantoCobra(unaPresentacion){
		if (self.tocaSolo(unaPresentacion)){
			return 100
			}
		else
			return 50	
	}
	
	method tocaSolo(unaPresentacion){
		return ((unaPresentacion.musicos()).size() == 1) //&& self.esElMismo(unaPresentacion)
	}
	
	method esElMismo(unaPresentacion){
		return (unaPresentacion.musicos()).first() == self
	}
	
	//override method habilidad(){
		//if(self.tocaEnGrupo()){
			//return habilidad += loQueAumenta
		//}
		//else
		
		//return habilidad
		
	method aumentarHabilidad(cantidad){
		if(!self.esSolista()){
		habilidad += cantidad
		}
	}
	
}