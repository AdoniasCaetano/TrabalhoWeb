package trabalho;

public class Fatorial {
	
	public static int calcular(int numero) {
		if(numero == 0 || numero == 1)
			return 1;
		else
			return numero * calcular(numero - 1);
	}
	
	public boolean testeTrabalho(){
		return false;
	}
}
