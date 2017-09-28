class Musico {
	var grupoAlQuePertenece
	var albumes = []
	var habilidad
	
	constructor(unGrupo,losAlbumes,unaHabilidad){
		grupoAlQuePertenece = unGrupo
		albumes = losAlbumes
		habilidad = unaHabilidad
		
	}
	
	method agregarAlbum(unAlbum){
		albumes.add(unAlbum)
	}
	
	method grupoAlQuePertenece(unValor){
		grupoAlQuePertenece = unValor
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
	
	method esMinimalista(){
		return albumes.forEach({ unAlbum => unAlbum.todasSusCancionesSonCortas() }) 
	}
	
	method cancionesQueTienen(unaPalabra){
		return albumes.forEach({ unAlbum => unAlbum.cancionesConPalabra(unaPalabra) })
	}
	
	method cuantoDuraLaObra(){
		return albumes.forEach({ unAlbum => unAlbum.duracionAlbum() })
	}
	
	method cancionMasLarga(){
		return albumes.forEach({ unAlbum => unAlbum.cancionConMasLetra() })
	}
	
	method laPego(){
		//return albumes.forEach({ unAlbum => unAlbum.buenaVenta() }) //me parece que va un all en vez de un forEach
		return albumes.all({ unAlbum => unAlbum.buenaVenta() })
	}
}
