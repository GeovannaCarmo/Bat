@echo off
title Exercicio-numero_randomico
mode 60,20
:inicio
color 0F
set /a tot_tent = 5
set /a numero_rand=(%random% %% 50) + 1
cls
echo.
echo.
echo        ===============================================
echo          Sorteamos um numero de 0 a 50 - * Adivinhe *
echo        ===============================================
echo. 
echo. 
echo.
echo  Tentativa Restantes : %tot_tent%
echo.
echo.
set /p resp_num= Qual seu belissimo chute?
if %resp_num% == %numero_rand% (goto:acerto) else (goto:erro)


:erro
cls
color 0F
set /a tot_tent = %tot_tent% - 1
echo.
echo.
echo        ===============================================
echo          Sorteamos um numero de 0 a 50 - * Adivinhe *
echo        ===============================================
echo. 
echo. 
echo.
echo  Tentativa Restantes : %tot_tent%
echo.
if %resp_num% LSS %numero_rand% (echo ------------------------------------------------------
echo Voce chutou baixo demais, vamo la!!
echo ------------------------------------------------------
) else (echo ------------------------------------------------------
echo Voce chutou muito alto, vamo com calma em!!
echo ------------------------------------------------------
)
echo.
if %tot_tent% == 0 (goto:acabaram_tent)
set /p resp_num= Qual seu belissimo chute ?
if %resp_num% == %numero_rand% (goto:acerto) else (goto:erro)


:acerto
color 02
cls
set /a cont_jogo = %cont_jogo% + 1
set /a cont_acertos = %cont_acertos% +1
echo ------------------------------------
echo PARABENS O NUMERO ERA: %numero_rand%
echo ------------------------------------
set /p fim_acerto= Deseja sortear um novo numero?[S/N]
if /i %fim_acerto%== s (goto:inicio) else (Call menu.bat)



:acabaram_tent
color 04
set /a cont_jogo = %cont_jogo% + 1
cls
echo.
echo O numero certo era : %numero_rand%
set /p resp_erro= Suas tentativas acabaram, deseja tentar novamente? [S/N]
if /i %resp_erro%== s (goto:inicio) else (Call menu.bat
exit)


