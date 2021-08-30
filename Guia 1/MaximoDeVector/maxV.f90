PROGRAM maxV
IMPLICIT NONE

INTEGER, ALLOCATABLE :: array(:)
INTEGER n,i

WRITE (*,*) 'Ingrese la dimension del arreglo'
READ (*,*) n
ALLOCATE(array(n))

DO i=0,n,1
WRITE (*,*) 'Ingrese la componente ',i
READ (*,*) array(i)
END DO


WRITE (*,*) 'El maximo valor del arreglo es: ',MAXVAL(array)
DEALLOCATE(array)

END PROGRAM
