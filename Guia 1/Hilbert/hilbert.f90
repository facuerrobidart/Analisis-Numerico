PROGRAM hilbert
IMPLICIT NONE

REAL(8), ALLOCATABLE :: matriz(:,:)
INTEGER n,i,j

WRITE (*,*) 'Ingrese el orden de la matriz de hilbert'
READ (*,*) n

ALLOCATE(matriz(n,n))
OPEN(2,FILE='hilbert.dat',STATUS='REPLACE')
WRITE(2,'(I2)') n
DO i=1,n
    DO j=1,n
        matriz(i,j)=1/(REAL(i)+REAL(j)-1)
        WRITE (*,'(F10.5)',ADVANCE='NO') matriz(i,j)
        WRITE (2,'(F10.5)',ADVANCE='NO') matriz(i,j)
    END DO
    WRITE (*,*) ' '
    WRITE (2,*) ' '
END DO

CLOSE(2,STATUS='KEEP')
END PROGRAM