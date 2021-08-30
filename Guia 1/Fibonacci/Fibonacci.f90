PROGRAM fibonacci

IMPLICIT NONE

INTEGER termino

WRITE (*,*) 'Ingrese el termino de fibonacci a calcular'
READ *, termino

WRITE (*,*) fibo(termino)

CONTAINS

RECURSIVE INTEGER FUNCTION fibo(termino) result (suma)
INTEGER termino

IF (termino==0) THEN
suma=0
ELSE IF (termino==1) THEN
suma=1
ELSE
suma = fibo(termino-1)+fibo(termino-2)
END IF
END FUNCTION


END PROGRAM
