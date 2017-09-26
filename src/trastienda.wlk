
object trastienda {
	
	method capacidad(){
		if(self.esSabado()){
			return  700
		}
		else
		
			return 400
	}
	
	method esConcurrido(){
		return self.capacidad() > 5000
	}
	
	
	method esSabado(){
		return (fecha).dayOfWeek() == 6
	}


}