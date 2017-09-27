
class Musico {
	var grupoAlQuePertenece
	var albumes = []
	var habilidad
	
	constructor(unGrupo,losAlbunes,unaHabilidad){
		grupoAlQuePertenece = unGrupo
		albumes = losAlbunes
		habilidad = unaHabilidad
		
	}
	
	method grupoAlQuePertenece(){
		return grupoAlQuePertenece
	}
	
	method albumes(){
		return albumes
	}
	
	method esSolista(){
		return self.grupoAlQuePertenece() == null
	}
	
	method habilidad(){
		return habilidad
	}


}