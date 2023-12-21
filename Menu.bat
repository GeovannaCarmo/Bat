@echo off
title Exercicio-numero_randomico
color 0D
mode 50,25
:menu
cls
echo.
echo         +-------------------------------+
echo         ¦                               ¦
echo         ¦  Acerte o numero randomico    ¦
echo         ¦                               ¦
echo         +-------------------------------+
echo.
echo.
echo.
echo Voce jogou : %cont_jogo%
echo E acertou : %cont_acertos%
echo.
echo.
echo           (J)ogar
echo           (S)air
echo.
echo.
set /p resp= Oque deseja fazer:
if /i %resp% == j (Call Jogo-numero-randomico.bat)
if /i %resp% == s (goto:sair) else (
	echo.
	echo Resposta Invalida
	echo.
	pause
	goto:menu)

:sair
echo ------------------------------------
set /p falow=Deseja realmente sair? [S/N]:
if /i %falow% == s (exit) else (goto:menu)
	








