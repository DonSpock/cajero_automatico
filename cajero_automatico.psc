Proceso cajero_automatico
	Definir cp, p, vp, tp, tf, td, cd, vu, cl, in, op, i Como Entero;
	//cp: Cantidad de productos.	//p: Valor del producto actual.	//vp: Cantidad a vender del producto actual.
	//tp: Total por producto Se calcula (Valor unitario por Cantidad).	//tf: Total factura.	//td: Total d�a.
	//cd: Cantidad de dinero entregado por el cliente.	//vu: Variable que almacena el vuelto a entregar.
	//cl: clave de la caja registradora.	//in: Variable que controla el fin del ciclo principal.
	//op: Esta variable permite elegir las opciones del men�.
	tf<-0;
	td<-0;
	cl<-123;
	in<-0;
	Mientras (in == 0) Hacer
		Escribir "==Men�==";
		Escribir "1. Vender";
		Escribir "2. Ver Total del d�a y finalizar";
		Leer op;
		Segun op Hacer
			1:
				Limpiar Pantalla;
				Escribir "Ingrese la cantidad de productos que vender�";
				Leer cp;
				Para i <- 1 Hasta cp Con Paso 1 Hacer
					Escribir "Ingrese el valor del producto: ",i;
					Leer p;
					Escribir "Ingrese la cantida a vender del producto: ",i;
					Leer vp;
					tp<- p*vp;
					tf<- tf+tp;
				FinPara
				Escribir "Digite la clave de la caja registradora";
				Leer cl;
				si(cl==123) Entonces
					escribir "Ingrese la cantidad de dinero entregada por el cliente";
					Leer cd;
					vu<- cd-tf;
					Escribir "*** RESUMEN DE LA COMPRA ***";
					Escribir "El total de la compra fue: ",tf;
					Escribir "El dinero entregado por el cliente fue: ",cd;
					Escribir "El vuelto del cliente fue: ",vu;
					//Al total del dia le restamos el total factura para almacenar
					td<-td-tf;
					//tf vuelve a valor 0 para nuevas compras
					tf<-0;
				SiNo
					Escribir "La contrase�a es incorrecta intente nuevamente";
				FinSi
			2:
				Limpiar Pantalla;
				in<-1;
				Escribir "El total de las ventas del dia fue: ",td;
			De Otro Modo:
				Escribir "Ingres� una opcion inv�lida";
		FinSegun
	FinMientras
FinProceso
