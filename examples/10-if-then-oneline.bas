10 REM Ejemplo: if-then
20 REM En BASIC de ZXSpectrum no hay <else>
30 LET x = 10
40 IF NOT x >= 5 THEN GOTO 60
50 PRINT "Aprobado"
60 IF NOT x < 5 THEN GOTO 80
70 PRINT "Suspendido"
80 STOP