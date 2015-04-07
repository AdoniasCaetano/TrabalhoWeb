// JavaScript Document

//valida numero inteiro com mascara
function mascaraInteiro(){
	if (event.keyCode < 48 || event.keyCode > 57){
		event.returnValue = false;
		return false;
	}
	return true;
}

//aceita somente numeros
function soNumeros(str){  
	if(mascaraInteiro(str) == false){
		event.returnValue = false;
		return false;
	}
	
	return true;
}  