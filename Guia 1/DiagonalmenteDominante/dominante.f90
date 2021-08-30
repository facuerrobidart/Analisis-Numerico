PROGRAM diagonalmenteDominante
IMPLICIT NONE

INTEGER, ALLOCATABLE :: matriz(:,:)
INTEGER n,i,j
LOGICAL result

WRITE (*,*) 'Ingrese el orden de la matriz'
READ (*,*) n

ALLOCATE(matriz(n,n))
WRITE(2,'(I2)') n
DO i=1,n
    DO j=1,n
        WRITE (*,*) 'Ingrese (',i,',',j,')'
        READ (*,*) matriz(i,j)
    END DO
END DO

DO i=1,n
    DO j=1,n
        WRITE (*,'(I4)',ADVANCE='NO') matriz(i,j)
    END DO
    WRITE (*,*) ''
END DO


result = dominante(matriz)
WRITE (*,*) result
IF (result .eqv. .TRUE.) THEN
    WRITE (*,*) 'La matriz es diagonalmente dominante'
ELSE
    WRITE (*,*) 'La matriz NO es digonalmente dominante'
END IF
CONTAINS

LOGICAL FUNCTION dominante(matriz)
INTEGER, ALLOCATABLE :: matriz(:,:)
INTEGER i,j,acumNoDiagonal

DO i=1,n
    acumNoDiagonal=0
    DO j=1,n
        IF (i/=j) THEN
            acumNoDiagonal=acumNoDiagonal+ABS(matriz(i,j))
            !acumulo el valor absoluto de los que no son parte de la diagonal
        END IF
    END DO
    WRITE (*,*) acumNoDiagonal
    IF (acumNoDiagonal>=ABS(matriz(i,j))) THEN
        dominante=.FALSE.
        RETURN
    END IF
END DO
!Si salgo del do significa que no encontre ninguna fila que no cumpla

dominante = .TRUE.

END FUNCTION
END PROGRAM