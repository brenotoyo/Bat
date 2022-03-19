@echo off
title 
mode 60,30
color 0a

:sortear
cls
set /a cont=0 
set /a numero=(%random% %%50) + 1
goto:jogo

:jogo
cls
echo ===============================================
echo      Jogo do Acerto - Voce tem 5 chances
echo  Tente acertar um numero random de 1 a 50 ! ! 
echo ===============================================
echo.
set /p resp=Digite a resposta:
if %resp% equ %numero% (goto:acertou) else (goto:errou)

:acertou
cls
echo =============================
echo       Voce acertou :D 
echo   A resposta era: %numero%
echo =============================
echo.
set /p jogar=Deseja jogar novamente? [S/N]:
if /i %jogar% equ s (goto:sortear)
if /i %jogar% equ n (goto:sair) else (goto:erro)  

:errou
cls
set /a cont=%cont% + 1
if %cont% equ 5 (goto:perdeu)
if %resp% LSS %numero% (goto:menor)
if %resp% GTR %numero% (goto:maior)

:menor
cls
echo ===========================================
echo               Voce errou :/
echo O numero digitado e menor que a resposta
echo          Tente novamente ! ! !
echo      numero de tentativas - %cont%
echo ===========================================
echo.
set /p resp=Digite a resposta:
if %resp% equ %numero% (goto:acertou) else (goto:errou)

:maior
cls
echo ===========================================
echo               Voce errou :/
echo O numero digitado e maior que a resposta
echo          Tente novamente ! ! !
echo      numero de tentativas - %cont%
echo ===========================================
echo.
set /p resp=Digite a resposta:
if %resp% equ %numero% (goto:acertou) else (goto:errou)

:perdeu
cls
echo ==================================
echo    Ultilizou todas as chances
echo        Voce perdeu ! ! !
echo ==================================
echo.
set /p jogar=Deseja jogar novamente? [S/N]:
if /i %jogar% equ s (goto:sortear) 
if /i %jogar% equ n (goto:sair) else (goto:erro)

:sair
cls
echo.
set /p sair=Deseja realmente encerrar[S/N]:
if /i %sair% equ s (exit)
if /i %sair% equ n (goto:sortear) else (goto:erro2) 

:erro
cls
echo Dado imcompativel, Digite novamente !
echo.
set /p teste=Deseja jogar novamente? [S/N]:
if /i %teste% equ s (goto:sortear) 
if /i %teste% equ n (goto:sair) else (goto:erro)

:erro2
cls  
echo Dado imcompativel, Digite novamente !
echo.
set /p sair=Deseja realmente encerrar[S/N]:
if /i %sair% equ s (exit) 
if /i %sair% equ n (goto:sortear) else (goto:erro2)