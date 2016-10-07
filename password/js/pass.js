function adivina() {
	var inicial = "chilaquiles"
    do{

    	var pass = prompt("Adivina el password");
    }
    while(inicial != pass);
    
    document.getElementById("mensaje").innerHTML =
        "El password " + inicial + " ES CORRECTO";
}

function numero(){
	do{
		var numero = prompt("Dame un numero");
		
	}
	while(isNaN(numero));
	document.getElementById("mensaje2").innerHTML =
        "Correcto el valor " + numero + " es un numero";

}

function numeroWhile(){
	var numero;			
	while(isNaN(numero)){
		numero = prompt("Dame un numero");
	}
	document.getElementById("mensaje3").innerHTML =
        "Correcto el valor " + numero + " es un numero";

}