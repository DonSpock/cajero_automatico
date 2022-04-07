SubProceso inicio(opcionIni)
	Escribir '';
	Escribir '========================================================';
	Escribir '=================    1. INGRESAR     ===================';
	Escribir '=================    2. FINALIZAR    ===================';
	Escribir '========================================================';
	Escribir '';
	Escribir 'INGRESE UNA OPCION: ' Sin Saltar;
	leer opcion;
	Limpiar Pantalla;
	Repetir
		Segun opcion  Hacer
			1: login()
				
			2:
			De Otro Modo:
				Escribir "Opcion incorrecta. Intente nuevamente!";
		FinSegun
	Hasta Que opcion = 3
	Leer opcion;
FinSubProceso

Proceso Principal
	Definir opcionIni Como Entero;
	Escribir '========================================================';
	Escribir '==========       BIENVENIDO A CHANGOMAX      ===========';
	Escribir '========================================================';
	Escribir '';
	inicio(opcionIni);
FinProceso
