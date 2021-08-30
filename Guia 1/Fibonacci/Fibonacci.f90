PROGRAM fibonacci

IMPLICIT NONE

INTEGER termino

WRITE (*,*) 'Ingrese el termino de fibonacci a calcular'
READ *, termino
CALL hacer(termino)
CALL graficar

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

SUBROUTINE hacer(termino)
INTEGER termino,i

OPEN(2,FILE='fibo.dat',STATUS='REPLACE')

DO i=0,termino
WRITE (*,'(2I8)') i,fibo(i)
WRITE (2,'(2I4)') i,fibo(i)
END DO

CLOSE(2,STATUS='KEEP')
END SUBROUTINE


SUBROUTINE graficar

OPEN(3,FILE='script.p',STATUS='REPLACE')
WRITE(3,*)'set autoscale'
WRITE(3,*) 'unset log'
WRITE(3,*) 'unset label'
WRITE(3,*) 'set xtic auto'
WRITE(3,*) 'set ytic auto'
WRITE(3,*) 'set title "Sucesion de Fibonacci"'
WRITE(3,*) 'set xlabel "termino"'
WRITE(3,*) 'set ylabel "valor"'
WRITE(3,*) 'plot "fibo.dat" with lines'

CLOSE(3,STATUS='KEEP')

CALL SYSTEM("C:\gnuplot\bin\gnuplot.exe -persist script.p")
END SUBROUTINE
END PROGRAM
