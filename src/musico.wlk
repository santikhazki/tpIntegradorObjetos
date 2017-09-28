
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
	
	method grupoAlQuePertenece(unGrupo){
		grupoAlQuePertenece = unGrupo
	}
	
	method albumes(){
		return albumes
	}
	
	method esSolista(){
		return self.grupoAlQuePertenece().equals(null)
	}
	
	method habilidad(){
		return habilidad
	}


}