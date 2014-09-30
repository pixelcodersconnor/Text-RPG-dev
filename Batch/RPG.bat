REM Connor Wright's RPG Game Ported to Batch programming language (Compatible with DOS)

@echo off
TITLE Text-Based RPG Game

:startup
cls
echo What would you like to do?:
echo.
echo 1. Start the game
echo 2. Leave
echo.
set /p input0=Enter: 

if %input0% equ 1 goto begin
if %input0% equ 2 exit

goto startup

:begin
cls
set hp=100
set gold=0
set dmg=1
set armor=10

goto naming

:naming
echo Hello...
echo.
echo What is your name?
echo.
set /p name=Enter: 

goto welcome

:welcome
cls
echo Welcome to the game!
echo Here are your stats...
echo Health       = %hp%
echo Money        = %gold%
echo Attack Power = %dmg%
echo Armor Class  = %armor%
echo.
echo Press any key to continue...
pause >nul
goto home

:home
cls
echo Hello, %name%!
echo -----------------
echo Stats
echo.
echo Health 		= %hp%        Money = %gold%
echo Attack Power    = %dmg%   Armor Class = %armor% 

echo Press any key to continue...
pause >nul
exit