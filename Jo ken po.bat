@echo off
title Jogo - Jo-Ken-Po
mode 60,30
color 0a

:login
cls
set /a e=0 
set /a v=0 
set /a d=0 
set /p nick=Digite seu nick: 
goto:sortear


:sortear
cls 
set /a bot=(%random% %%5) + 1
goto:jogo

:jogo
cls
echo ----------------------------------
echo Jogador: %nick%
echo ----------------------------------
echo.
echo             (o o)
echo =========ooO=(_)=Ooo==============
echo ----------------------------------
echo        Opcoes Jogaveis
echo ----------------------------------
echo  [1]  Pedra
echo  [2]  Papel
echo  [3]  Tesoura
echo  [4]  Lagarto
echo  [5]  Spock
echo  [E]  Encerrar jogo
echo  [R]  Regras
echo  [M]  Mudar Player
echo =================================
set /p escolha=Escolha  uma opcao:
echo =================================
if %escolha% equ 1 (goto:pedra)
if %escolha% equ 2 (goto:papel)
if %escolha% equ 3 (goto:tesoura)
if %escolha% equ 4 (goto:lagarto)
if %escolha% equ 5 (goto:spock)
if /i %escolha% equ e (goto:encerrar)
if /i %escolha% equ r (goto:regras)
if /i %escolha% equ m (goto:login)

:regras
echo.
echo Pedra: Empata com pedra; Ganha de tesoura e lagarto; 
echo        Perde de papel e spock.
echo.
echo Papel: Empata com papel; Ganha de pedra e spock; 
echo        Perde de tesoura e lagarto.
echo.
echo Tesoura: Empata com tesoura; Ganha de lagarto e papel; 
echo        Perde de pedra e spock.
echo.
echo Lagarto: Empata com lagarto; Ganha de papel e spock; 
echo        Perde de pedra e tesoura.
echo.
echo Spock: Empata com spock; Ganha de pedra e tesoura; 
echo        Perde de papel e lagarto.
pause
goto:jogo

:pedra
echo.
echo %nick% escolheu: Pedra!
if %bot% equ 1 (
echo Computador escolheu: Pedra!
echo.
echo     Empate !
echo.
set /a e=%e% + 1
goto:placar) 

if %bot% equ 2 (
echo Computador escolheu: Papel!
echo.
echo   Voce perdeu!  :/
echo.
set /a d=%d% + 1
goto:placar)  

if %bot% equ 3 (
echo Computador escolheu: Tesoura!
echo.
echo   Voce ganhou!  :D
echo.
set /a v=%v% + 1
goto:placar)  

if %bot% equ 4 (
echo Computador escolheu: Lagarto!
echo.
echo   Voce ganhou!  :D
echo.
set /a v=%v% + 1
goto:placar)

if %bot% equ 5 (
echo Computador escolheu: Spock!
echo.
echo   Voce perdeu!  :/
echo.
set /a d=%d% + 1
goto:placar)

:papel
echo.
echo %nick% escolheu: Papel!
if %bot% equ 1 (
echo Computador escolheu: Pedra!
echo.
echo   Voce ganhou!  :D
echo.
set /a v=%v% + 1
goto:placar) 

if %bot% equ 2 (
echo Computador escolheu: Papel!
echo.
echo     Empate!
echo.
set /a e=%e% + 1
goto:placar)  

if %bot% equ 3 (
echo Computador escolheu: Tesoura!
echo.
echo   Voce perdeu!  :/
echo.
set /a d=%d% + 1
goto:placar)  

if %bot% equ 4 (
echo Computador escolheu: Lagarto!
echo.
echo   Voce perdeu!  :/
echo.
set /a d=%d% + 1
goto:placar)

if %bot% equ 5 (
echo Computador escolheu: Spock!
echo.
echo   Voce ganhou!  :D
echo.
set /a v=%v% + 1
goto:placar)

:tesoura
echo.
echo %nick% escolheu: Tesoura!
if %bot% equ 1 (
echo Computador escolheu: Pedra!
echo.
echo   Voce perdeu!  :/
echo.
set /a d=%d% + 1
goto:placar) 

if %bot% equ 2 (
echo Computador escolheu: Papel!
echo.
echo   Voce ganhou!  :D
echo.
set /a v=%v% + 1
goto:placar)  

if %bot% equ 3 (
echo Computador escolheu: Tesoura!
echo.
echo     Empate!
echo.
set /a e=%e% + 1
goto:placar)  

if %bot% equ 4 (
echo Computador escolheu: Lagarto!
echo.
echo   Voce ganhou!  :D
echo.
set /a v=%v% + 1
goto:placar)

if %bot% equ 5 (
echo Computador escolheu: Spock!
echo.
echo   Voce perdeu!  :/
echo.
set /a d=%d% + 1
goto:placar)

:lagarto
echo.
echo %nick% escolheu: Lagarto!
if %bot% equ 1 (
echo Computador escolheu: Pedra!
echo.
echo   Voce perdeu!  :/
echo.
set /a d=%d% + 1
goto:placar) 

if %bot% equ 2 (
echo Computador escolheu: Papel!
echo.
echo   Voce ganhou!  :D
echo.
set /a v=%v% + 1
goto:placar)  

if %bot% equ 3 (
echo Computador escolheu: Tesoura!
echo.
echo   Voce perdeu!  :/
echo.
set /a d=%d% + 1
goto:placar)  

if %bot% equ 4 (
echo Computador escolheu: Lagarto!
echo.
echo     Empate!
echo.
set /a e=%e% + 1
goto:placar)

if %bot% equ 5 (
echo Computador escolheu: Spock!
echo.
echo   Voce ganhou!  :D
echo.
set /a v=%v% + 1
goto:placar)

:Spock
echo.
echo %nick% escolheu: Spock!
if %bot% equ 1 (
echo Computador escolheu: Pedra!
echo.
echo   Voce ganhou!  :D
echo.
set /a v=%v% + 1
goto:placar) 

if %bot% equ 2 (
echo Computador escolheu: Papel!
echo.
echo   Voce perdeu!  :/
echo.
set /a d=%d% + 1
goto:placar)  

if %bot% equ 3 (
echo Computador escolheu: Tesoura!
echo.
echo   Voce ganhou!  :D
echo.
set /a v=%v% + 1
goto:placar)  

if %bot% equ 4 (
echo Computador escolheu: Lagarto!
echo.
echo   Voce perdeu!  :/
echo.
set /a d=%d% + 1
goto:placar)

if %bot% equ 5 (
echo Computador escolheu: Spock!
echo.
echo     Empate!
echo.
set /a v=%v% + 1
goto:placar)

:placar
echo ====Placar=====
echo  Vitorias: %v% 
echo  Derrotas: %d%
echo  Empates:  %e% 
echo ===============
echo.
set /p novo=Deseja jogar novamente? [S/N]:
if /i %novo% equ s (goto:sortear) else (exit)

:encerrar
set /p sair=Deseja realmente encerrar o jogo? [S/N]:
if /i %sair% equ s (exit) else (goto:jogo)