

@echo off
title JOKEN PO ESPACIAL
mode 80,40
color 0a

:inicio
cls
set /a numero=(%random% %% 4) + 1
echo.
echo.
echo ======================================
echo    BEM-VINDO AO JO-KEN-PO DO SR.SPOK 
echo ======================================
echo [1] PEDRA
echo [2] PAPEL
echo [3] TESOURA
echo [4] LAGARTO
echo [5] SPOK
echo [E] ENCERRAR O JOGO
echo [R] REGRAS
echo =======================================
echo.

set /p op=Escolha uma Opcao:

if %op% == 1 (goto:pedra)
if %op% == 2 (goto:papel)
if %op% == 3 (goto:tesoura)
if %op% == 4 (goto:lagarto)
if %op% == 5 (goto:spok) 
if /i %op% == E (goto:encerrar)
if /i %op% == R (goto:regras) else (
   echo.
   echo ------------------
   echo Opcao invalida!
   echo ------------------
  pause > nul
  goto:inicio)


:pedra
echo A maquina jogou:%numero%
if %numero% == 1 (echo. EMPATOU)
if %numero% == 2 (echo. VOCE PERDEU)
if %numero% == 3 (echo. VOCE GANHOU)
if %numero% == 4 (echo. VOCE GANHOU)
if %numero% == 5 (echo. VOCE PERDEU) 
  pause > nul
echo.
set /p joga=DESEJA JOGAR NOVAMENTE? [S]im ou [N]ao:

if /i %joga% == s (goto:inicio) else (exit)

:papel
echo. A maquina jogou:%numero%
if %numero% == 1 (echo. VOCE GANHOU)
if %numero% == 2 (echo. EMPATOU)
if %numero% == 3 (echo. VOCE PERDEU)
if %numero% == 4 (echo. VOCE PERDEU)
if %numero% == 5 (echo. VOCE GANHOU)
  pause > nul
                 
echo.
set /p joga=DESEJA JOGAR NOVAMENTE? [S]im ou [N]ao:

if /i %joga% == s (goto:inicio) else (exit)


:tesoura
echo A maquina jogou:%numero%
if %numero% == 1 (echo. VOCE PERDEU)
if %numero% == 2 (echo. VOCE GANHOU)
if %numero% == 3 (echo. EMPATOU)
if %numero% == 4 (echo. VOCE GANHOU)
if %numero% == 5 (echo. VOCE PERDEU)
pause > nul                 


set /p joga=Quer jogar novamente [S]im ou [N]ao?:

if /i %joga% == s (goto:inicio) else (exit)


:lagarto
echo A maquina jogou:%numero%
if %numero% == 1 (echo. VOCE PERDEU)
if %numero% == 2 (echo. VOCE GANHOU)
if %numero% == 3 (echo. VOCE PERDEU)
if %numero% == 4 (echo. EMPATOU)
if %numero% == 5 (echo. VOCE GANHOU)
pause > nul                 

echo.
set /p joga=DESEJA JOGAR NOVAMENTE? [S]im ou [N]ao:

if /i %joga% == s (goto:inicio) else (exit)


:spok
echo A maquina jogou:%numero%
if %numero% == 1 (echo. VOCE GANHOU)
if %numero% == 2 (echo. VOCE PERDEU)
if %numero% == 3 (echo. VOCE GANHOU)
if %numero% == 4 (echo. VOCE PERDEU)
if %numero% == 5 (echo. EMPATOU)
pause > nul                 

echo.
set /p joga=DESEJA JOGAR NOVAMENTE? [S]im ou [N]ao:

if /i %joga% == s (goto:inicio) else (exit)

:regras
cls
echo ==============================================================
echo --------------------------------------------------------------
echo PEDRA:
echo Empata: Pedra
echo Ganha: Tesoura e Lagarto
echo Perde: Papel e Spok
echo --------------------------------------------------------------
echo PAPEL:
echo Empata: Papel
echo Ganha: Pedra e Spok
echo Perde: Tesoura e Lagarto
echo ---------------------------------------------------------------
echo TESOURA:
echo Empata: Tesoura
echo Ganha: Lagarto e Papel
echo Perde: Pedra e Spok
echo --------------------------------------------------------------
echo LAGARTO:
echo Empata: Lagarto
echo Ganha: Papel e Spok
echo Perde: Pedra e Tesoura
echo --------------------------------------------------------------
echo SPOK:
echo Empata: Spok
echo Ganha: Pedra e Tesoura
echo Perde: Lagarto e Papel
echo --------------------------------------------------------------
===================================================================
pause > nul
set /p resp= Vamos voltar ao jogo [S]im ou [N]ao?
if /i %resp% == s (goto:inicio) else (exit)


:random
if %numero% == 1 (echo. Pedra)
if %numero% == 2 (echo. Papel)
if %numero% == 3 (echo. Tesoura)
if %numero% == 4 (echo. Lagarto)
if %numero% == 5 (echo. Spok)
pause > nul