class Cancion {
	var nombre
	var duracion
	var letra = []

	constructor (titulo,tiempo,texto){
		nombre = titulo
		duracion = tiempo
		letra = texto 
		}
	
	method nombre(){
		return nombre
	}
	
	method nombre(unNombre){
		nombre = unNombre
	}
	
	method duracion(){
		return duracion
	}
	
	method duracion(unaDuracion){
		duracion = unaDuracion
	}
	
	method letra(){
		return letra
	}
	
	method letra(unaLetra){
		letra = unaLetra
	}
	
	method laCancionContieneLaPalabraFamilia(){
		return letra.contains("familia")
	}
	
	method laCancionEsLarga(){
		return duracion > 300
	}
}