

@echo off
title JOKEN PO ESPACIAL
mode 60,30
color 0a

:inicio
cls
set /a numero=(%random% %% 4) + 1


echo.

echo.
echo            (  O     O )
echo ---------Ooo    (_)    Ooo------------
echo   Bem-Vindo ao Jo-Ken-Po do Sr. SPOK
echo --------------------------------------
echo [1] PEDRA
echo [2] PAPEL
echo [3] TESOURA
echo [4] LAGARTO
echo [5] SPOK
echo [E] ENCERRAR O JOGO
echo [R] REGRAS

echo --------------------------------------
echo.



set /p op=Escolha uma Opcao :


if %op% == 1 (goto:pedra)
if %op% == 2 (goto:papel)
if %op% == 3 (goto:tesoura)
if %op% == 4 (goto:lagarto)
if %op% == 5 (goto:spok) else (
   echo.
   echo ------------------
   echo Opcao invalida!
   echo ------------------
  pause > nul
  goto:inicio)


:pedra

if %numero% == 1 (echo. EMPATOU)
if %numero% == 2 (echo. GANHOU)
if %numero% == 3 (echo. PERDEU)
if %numero% == 4 (echo. PERDEU)
if %numero% == 5 (echo. PERDEU
pause > nul


set /p joga=Quer jogar novamente [S]im ou [N]ao?

if %joga% == s (goto:inicio) else (exit)






:papel

if %numero% == 1 (echo. GANHOU)
if %numero% == 2 (echo. EMPATOU)
if %numero% == 3 (echo. PERDEU)
if %numero% == 4 (echo. PERDEU)
if %numero% == 5 (echo. PERDEU)
pause > nul
                 


set /p joga=Quer jogar novamente [S]im ou [N]ao?

if %joga% == s (goto:inicio) else (exit)



:tesoura
if %numero% == 1 (echo. GANHOU)
if %numero% == 2 (echo. GANHOU)
if %numero% == 3 (echo. EMPATOU)
if %numero% == 4 (echo. PERDEU)
if %numero% == 5 (echo. PERDEU
pause > nul                 


set /p joga=Quer jogar novamente [S]im ou [N]ao?

if %joga% == s (goto:inicio) else (exit)




:lagarto

if %numero% == 1 (echo. GANHOU)
if %numero% == 2 (echo. GANHOU)
if %numero% == 3 (echo. PERDEU)
if %numero% == 4 (echo. EMPATOU)
if %numero% == 5 (echo. PERDEU
pause > nul                 


set /p joga=Quer jogar novamente [S]im ou [N]ao?

if %joga% == s (goto:inicio) else (exit)



:spok

if %numero% == 1 (echo. GANHOU)
if %numero% == 2 (echo. GANHOU)
if %numero% == 3 (echo. PERDEU)
if %numero% == 4 (echo. PERDEU)
if %numero% == 5 (echo. EMPATOU)
pause > nul                 


set /p joga=Quer jogar novamente [S]im ou [N]ao?

if %joga% == s (goto:inicio) else (exit)


