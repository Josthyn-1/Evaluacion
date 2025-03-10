Algoritmo sin_titulo
	Dimensionar N[10,3]
	Dimensionar usuarios[10,2]
	Dimensionar B[10]
	usuario(usuarios)
	Dimensionar np[10]
	repetir
		Escribir "Calculador de notas"
		Escribir "1: Mostrar listado de estudiantes"
		Escribir "2: Asiganiciom de notas"
		Escribir "3: Registrar numero de inasistencias"
		Escribir "4: Calcular nota final"
		leer opc
		Segun opc Hacer
			1:
				ImpresionEstudiantes(usuarios, 10 , 2, "Estudiantes:", "ID Nombre")
			2:
				RegistroNotas(N,10, 3)
			3:
				RegistroInacistencias(B,10)
			4:
				notafinal(N,usuarios,B,"COD NOMBRE N1 N2 N3 INASISTENCIAS NOTAFINAL")
			De Otro Modo:
				Escribir"Opcion no valida"
		Fin Segun
		Escribir "Presione enter para continuar"
		Esperar Tecla
		Borrar Pantalla
	Hasta Que opc=4
FinAlgoritmo
Funcion notafinal(N Por Referencia, usuarios Por Referencia, B Por Referencia, Encabezado)
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		np<- Subcadena(N,i,j)+Subcadena(N,i+1,j+1)+Subcadena(N,i+2,j+2)
	FinPara
	Si B>=10 Y B<15
		NF<-nf-0.5
	SiNo
		Si B>=15 Entonces
			NF<-nf-1
		FinSi
	Fin Si
	Escribir Encabezado
	Escribir sin bajar usuarios N B NF " "
FinFuncion


Funcion RegistroInacistencias(B Por Referencia,TamañoFila)
		para i<- 1 Hasta TamañoFila Con Paso 1 Hacer
			Escribir "Estudiante " i
			Escribir "Ingrese inasistencias"
			para j<-1 Hasta 1 con paso 1 Hacer
				Leer B[j]
			FinPara
		FinPara
FinFuncion
//Funcion ImpresionNotas (N Por Referencia, TamañoFila, TamañoColum,encabezado)
//	Escribir encabezado
//	Para i<-1 Hasta TamañoFila Con Paso 1 Hacer
//		Para j<-1 Hasta TamañoColum Con Paso 1 Hacer
//			Escribir Sin bajar N[i,j], " " 
//		Fin Para
//		Escribir ""
//	Fin Para
//FinFuncion
Funcion RegistroNotas(N Por Referencia,TamañoFila, TamañoColum)
	para i<- 1 Hasta TamañoFila Con Paso 1 Hacer
		Escribir "Estudiante " i
		para j<-1 Hasta TamañoColum con paso 1 Hacer
			Escribir "Ingrese nota " j
			Leer N[i,j]
			
		FinPara
		np<- Subcadena(N,i,j)+Subcadena(N,i+1,j+1)+Subcadena(N,i+2,j+2)
	FinPara
FinFuncion

Funcion ImpresionEstudiantes (arreglo Por Referencia, TamañoFila, TamañoColum, titulo, encabezado)
	Escribir titulo
	Escribir encabezado
	Para i<-1 Hasta TamañoFila Con Paso 1 Hacer
		Para j<-1 Hasta TamañoColum Con Paso 1 Hacer
			Escribir Sin bajar arreglo[i,j], " " 
		Fin Para
		Escribir ""
	Fin Para
FinFuncion
Funcion usuario(usuarios Por Referencia)
	usuarios[1,1] <- "01"
	usuarios[1,2] <- "Federico Perez"
	
	usuarios[2,1] <- "02"
	usuarios[2,2] <- "Julian Sanchez"
	
	usuarios[3,1] <- "03"
	usuarios[3,2] <- "Maria Gomez"
	
	usuarios[4,1] <- "04"
	usuarios[4,2] <- "Kevin Ramirez"
	
	usuarios[5,1] <- "05"
	usuarios[5,2] <- "Andres Hernandez"
	
	usuarios[6,1] <- "06"
	usuarios[6,2] <- "Santiago Suarez"
	
	usuarios[7,1] <- "07"
	usuarios[7,2] <- "Juan Gomez"
	
	usuarios[8,1] <- "08"
	usuarios[8,2] <- "Jhon Rojas"
	
	usuarios[9,1] <- "09"
	usuarios[9,2] <- "Luisa Perez"
	
	usuarios[10,1] <- "10"
	usuarios[10,2] <- "Pedro Jimenez"

	
FinFuncion
