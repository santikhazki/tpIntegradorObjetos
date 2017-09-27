import musico.*

class VocalistaPopular inherits Musico {
	
	constructor(unGrupo,losAlbunes,unaHabilidad) = super(unGrupo,losAlbunes,unaHabilidad){
		if(!self.esSolista()){
			habilidad -= 20
			
		}
	}
	
	method interpretaBienLaCancion(unaCancion,unaPalabra){
		return unaCancion.laCancionContiene(unaPalabra)
	}
	
	method cuantoCobra(unaPresentacion){ 
		if(unaPresentacion.esConcurrido()){
			return 500
		}
		else
		return 400
	}
}
