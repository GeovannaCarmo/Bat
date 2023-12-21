




@echo off
title Aula 03 - Exemplo numeros randomicos e contador
mode 60,30
color 0a
set /a cont=6
set /a numero=(%random% %% 50) + 1


:sorteio
if %cont% == 0  (goto:exit) 

cls

set /a cont=%cont% - 1
echo.
echo              (o o)
echo  ========ooO==(_)==Ooo============
echo  ADVINHE O NUMERO SORTEADO ENTRE 01 E 50
echo ----------------------------------------
echo     QTDE DE TENTADIVAS: %cont%
echo ================================== 
echo QTDE DE SORTEIOS: %cont%
echo ==================================
echo.
set resp=Qual o numero? 




set /p resp=Qual numero estou pensando? 

if %resp% == %numero% (echo. Parabens
                      pause 
                      exit)


if %resp% LSS %numero% (echo. mais) else (echo.menos)
pause

rem if %resp% == %numero% (echo.Parabens) else (goto:sorteio)


rem if /I %resp% == S and %cont% neq 0 (goto:sorteio) else (exit)

if %cont% GTR 0  (goto:sorteio) else (exit)




