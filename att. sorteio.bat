@echo off
title Aula 03 - Exemplo numeros randomicos e contador
mode 60,30
color 0d

:inicio
set /a cont=6
set /a numero=(%random% %% 50) + 1

:sorteio

if %cont% == 0  (goto:reiniciar) 

cls

set /a cont=%cont% - 1
echo.
echo =========================================
echo  ADVINHE O NUMERO SORTEADO ENTRE 01 E 50
echo =========================================
echo ==========================================
echo 	QUANTIDADE DE TENTATIVAS: %cont%
echo ==========================================
echo.
set resp=Qual o numero? 


set /p resp=QUAL E O NUMERO SORTEADO?:

if %resp% == %numero% (goto:parabens) 

if %resp% LSS %numero% (echo. O numero e maior que o digitado) else (echo. O numero e menor que o digitado)
pause > nul
echo.

rem if %resp% == %numero% (goto:parabens) else (goto:sorteio)

rem if /I %resp% == S and %cont% neq 0 (goto:sorteio) else (goto:reiniciar)

if %cont% GTR 0  (goto:sorteio) else (goto:reiniciar)

:parabens
echo ==========================================
echo 	    PARABENS VOCE ACERTOU 
echo ===========================================
	pause > nul
goto:reiniciar

:reiniciar
set /p resp=Deseja jogar novamente? [S/N]:
if /i %resp% == s (goto:inicio) else (exit)
