@echo off
title Login-Jokenpo
color 0C
mode 50,25
set /a tot_vit = 0
set /a tot_emp = 0
set /a tot_err = 0

:logando
cls
color 0C
echo.
echo ===============================================                      
echo                     Ola
echo =============================================== 
echo.
echo.
echo.
echo.
echo.
echo.
set /p name= Informe seu nome para jogar:
echo.
echo.
echo.
Call Menu.bat