import lunaPark.*
import trastienda.*

class Presentacion {
	var lugar
	var fecha
	var musicos = []
	
	constructor(unLugar,unaFecha,losMusicos){
		lugar = unLugar
		fecha = unaFecha
		musicos = losMusicos
		
	}
	
	method lugar(){
		return lugar
	}
	
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
	
	method costo(){
		return musicos.sum({ unMusico => unMusico.cuantoCobra(self) })
	}
	
	method esConcurrido(unaPresentacion){
		unaPresentacion.elLugarEsConcurrido()
	}
	
	method laPresentacionEsAntesDeSeptiembre(){
		return fecha <= new Date(1,09,2017)
	}
	
	


}