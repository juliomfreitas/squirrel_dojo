

Lisp = function(entrada){
	this.palavras = [];
	this.telefones = [];
	var c = {};
	c[1] = 'J N Q j n q';
	c[2] = 'R W X r w x';
	c[3] = 'D S Y d s y';
	c[4] = 'F T f t';
	c[5] = 'A M a m';
	c[6] = 'C I V c i v';
	c[7] = 'B K U b k u';
	c[8] = 'C I V c i v';
	c[9] = 'L O P l o p';
	c[0] = 'E e';


	this.parseTelefone = function(telefone) {/783-
		telefone.split("/");
		telefone.split("-");
	};

	this.validaEntrada = function(){
		var elementos = entrada.split(" ");
		
		try{
			var num_palavras = parseInt(elementos[0]);
		   } catch (e)
	        {	
			return false;
		}
		try{
			var num_telefones = parseInt(elementos[num_palavras+1]);
		   } catch (e)
	          		{	
			return false;
			}	

		return elementos[num_palavras + num_telefones + 2] == '0';
	
	}

	this.interpretaEntrada = function(input){
		var elementos = input.split(" ");
		var num_palavras = parseInt(elementos[0]);

		var i=0;
		for(i=0; i<num_palavras; i++) {
			this.palavras.push(elementos[i+1]);
		}
		
		var num_telefones = parseInt(elementos[i+1]);
		
		for(var j=i+2; j<=num_palavras+1+num_telefones; j++) {
			this.telefones.push(elementos[j]);
		}
		
		return true;
	}; 

	this.interpretaEntrada(entrada);

	return this;
};
