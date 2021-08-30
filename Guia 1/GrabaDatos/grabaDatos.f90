PROGRAM grabaDatos
IMPLICIT NONE
INTEGER orden
REAL, PARAMETER :: PI=4.D0*DATAN(1.D0)
REAL(4) flotante,seno,coseno,tangente
OPEN(UNIT=2, FILE='valores.dat', STATUS='REPLACE')

orden=3
flotante=23.412
seno = SIN(3.14/2)
coseno = cos(3.14)
tangente = tan(PI/4)
WRITE (2,'(I3)',ADVANCE='NO') orden
WRITE (2,'(F8.3)',ADVANCE='NO') flotante
WRITE (2,'(3F10.5)',ADVANCE='NO') seno,coseno,tangente

CLOSE(2,STATUS='KEEP')
END PROGRAM
