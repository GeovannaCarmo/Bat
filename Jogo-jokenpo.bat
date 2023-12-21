@echo off
title JOKENPO
color 0E
mode 50,25



:inicio_jogo
cls
color 0E
echo -----------------------------
echo      Escolha seu ataque
echo -----------------------------
echo (1) PEDRA
echo (2) PAPEL
echo (3) TESOURA
echo (4) LAGARTO
echo (5) SPOCK
echo [V]oltar
echo [R]egras
echo [P]lacar
echo.
echo.
echo ---------- BOA SORTE ----------

set /a numero_rand=(%random% %% 5) + 1
set /p escol= QUAL SUA JOGADA ?
goto:escolha
pause


:escolha
if %escol%==1 (set ataque=PEDRA)
if %escol%==2 (set ataque=PAPEL)
if %escol%==3 (set ataque=TESOURA)
if %escol%==4 (set ataque=LAGARTO)
if %escol%==5 (set ataque=SPOCK)
goto:escolha_bot


:escolha_bot
if %numero_rand%==1 (set ataque_bot=PEDRA)
if %numero_rand%==2 (set ataque_bot=PAPEL)
if %numero_rand%==3 (set ataque_bot=TESOURA)
if %numero_rand%==4 (set ataque_bot=LAGARTO)
if %numero_rand%==5 (set ataque_bot=SPOCK)
goto:game

:game
if %escol%==1 (
if %numero_rand%==1 (goto:empate)
if %numero_rand%==2 (goto:derrota)
if %numero_rand%==3 (goto:vitoria)
if %numero_rand%==4 (goto:vitoria)
if %numero_rand%==5 (goto:derrota)
)
if %escol%==2 (
if %numero_rand%==1 (goto:vitoria)
if %numero_rand%==2 (goto:empate)
if %numero_rand%==3 (goto:derrota)
if %numero_rand%==4 (goto:derrota)
if %numero_rand%==5 (goto:vitoria)
)
if %escol%==3 (
if %numero_rand%==1 (goto:derrota)
if %numero_rand%==2 (goto:vitoria)
if %numero_rand%==3 (goto:empate)
if %numero_rand%==4 (goto:vitoria)
if %numero_rand%==5 (goto:derrota)
)
if %escol%==4 (
if %numero_rand%==1 (goto:derrota)
if %numero_rand%==2 (goto:vitoria)
if %numero_rand%==3 (goto:derrota)
if %numero_rand%==4 (goto:empate)
if %numero_rand%==5 (goto:vitoria)
)
if %escol%==5 (
if %numero_rand%==1 (goto:vitoria)
if %numero_rand%==2 (goto:derrota)
if %numero_rand%==3 (goto:vitoria)
if %numero_rand%==4 (goto:derrota)
if %numero_rand%==5 (goto:empate)
)
if /i %escol%==r (goto:regras)
if /i %escol%==v (Call Menu.bat menu
Exit)
if /i %escol%==p (goto:placar)else (
	echo.
	echo Resposta Invalida
	echo.
	pause
	goto:inicio_jogo)
pause




:vitoria
echo ---------------------------
echo    Parabens voce ganhou
echo ---------------------------
echo %name% escolheu: %ataque%
echo O computador escolheu: %ataque_bot%
set /a tot_vit = %tot_vit% + 1
pause
goto:inicio_jogo


:derrota
echo ---------------------------
echo   Obliterado pela maquina
echo ---------------------------
echo %name% escolheu: %ataque%
echo O computador escolheu: %ataque_bot%
set /a tot_err = %tot_err% + 1
pause
goto:inicio_jogo

:empate
echo ---------------------------
echo    Aconteceu um empate
echo ---------------------------
echo %name% escolheu: %ataque%
echo O computador escolheu: %ataque_bot%
set /a tot_emp = %tot_emp% + 1
pause
goto:inicio_jogo


:Placar
color 0D
cls
echo -----------------------
echo    Placar de %name%
echo -----------------------
echo Voce acertou: %tot_vit% vezes
echo Mas tambem empatou: %tot_emp% vezes
echo E errou: %tot_err% vezes
pause
goto:inicio_jogo

:regras
mode 70,30
color 0A
cls
echo.
echo ===================================================================
echo                             REGRAS
echo ===================================================================
echo.
echo PEDRA:
echo empata com Pedra; Ganha de Tesoura e Lagarto; Perde de Papel e Spock.
echo.
echo.
echo PAPEL:
echo empata com Papel; Ganha de Pedra e Spock; Perde de Tesoura e Lagarto.
echo.
echo.
echo TESOURA:
echo empata com Tesoura; Ganha de Lagarto e Papel; Perde de Pedra e Spock.
echo.
echo.
echo LAGARTO:
echo empata com Lagarto; Ganha de Papel e Spock; Perde de Pedra e Tesoura.
echo.
echo.
echo SPOCK:
echo empata com Spock; Ganha de Pedra e Tesoura; Perde de Lagarto e Papel.
echo.
echo.
pause                                                    
goto:inicio_jogo


