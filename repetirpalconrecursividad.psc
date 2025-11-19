Proceso repetirPalabraConRecursividad
    // Variables
    Definir palabra_usuario Como Caracter;
    Definir num_veces Como Entero;
    Definir resultado_final Como Caracter;
	
    Escribir "Escribí una palabra, la que quieras:";
    Leer palabra_usuario;
	
    Escribir "Cuantas veces quisieras repetir la palabra?";
    Leer num_veces;
	
    resultado_final <- RepetirPalabraRecursiva(palabra_usuario, num_veces);
	
    // mostrar resultado
    Escribir "La palabra repetida es:";
    Escribir resultado_final;
	
FinProceso

Funcion resultado_cadena <- RepetirPalabraRecursiva(palabra Por Valor, n Por Valor)
    //variables para la recursividad
    Definir resultado_cadena Como Caracter;
    Definir parte_anterior Como Caracter; 
	
    Si n <= 0 Entonces
        resultado_cadena <- "";
    SiNo
        parte_anterior <- RepetirPalabraRecursiva(palabra, n - 1);
        
        // le concatenamos la palabra
        resultado_cadena <- palabra + parte_anterior;
    FinSi

FinFuncion