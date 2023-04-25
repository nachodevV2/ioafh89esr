@echo off
title The Little Red Riding Hood
color 04

if "%1" neq "" ( goto %1)

:Menu
cls
echo 1. Start
echo 2. Credits
echo 3. Exit
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Credits
if %answer%==3 goto Exit

:Exit
cls
echo Thank you for playing!
timeout /T 5 /NOBREAK

:Start_1
cls
echo Taking care of granny.
pause
echo You see some flowers.
set /p answer=Would you like to pick flowers or continue around the path? [p/c]
if %answer%==p goto Pick_Flowers
if %answer%==c goto Continue_Path

:Credits
cls
echo Made by Boris O.
echo Storyline by Kristin B.
timeout /T 3 /NOBREAK
goto :Menu

:Pick_Flowers
cls
echo You see a wolf, heading towards you.
set /p answer=Do you run or hide?
if %answer%==run goto Run_1
if %answer%==hide goto Hide_1

:Continue_Path
cls
echo You see the woodcutter.
set /p answer=Stop to chat or go?
if %answer%==go goto Continue_3
if %answer%==chat goto Chat_2


:Run_1
cls
echo The wolf catches up.
pause
echo You have no choice. You get eaten...
pause
set /p answer=Return to start or exit? [start/exit]
if %answer%==start goto Menu
if %answer%==exit exit /b

:Hide_1
cls
echo The wolf finds you.

set /p answer=Give up or run away. [g/r]
if %answer%==g goto Hide_7
if %answer%==r goto Granny_Run_4


:Continue_3
cls
echo You run further in the woods.
pause
echo You drop the cupcakes.
set /p answer=Do you pick them up or carry on? [p/c]
if %answer%==p goto Pick_Up
if %answer%==c goto Further_3
pause
echo The wolf - that you didn't see - eats you. The end.
set /p answer=Return to start or exit? [start/exit]
if %answer%==start goto Menu
if %answer%==exit exit /b

:Chat_2
cls
echo You say 'Hey!' to the woodcutter
pause
echo He turns around, and accidentally chops your head off. The End.
set /p answer=Return to start or exit? [start/exit]
if %answer%==start goto Menu
if %answer%==exit exit /b

:Pick_Up
cls
echo The wolf - that you didn't see - eats you. The end.
set /p answer=Return to start or exit? [start/exit]
if %answer%==start goto Menu
if %answer%==exit exit /b

:Further_3
cls
echo You reach granny's house.
pause
echo You ran so fast you fainted.
echo A villager sees you, and calls an ambulance
pause
echo You died from dehydration. The end.
set /p answer=Return to start or exit? [start/exit]
if %answer%==start goto Menu
if %answer%==exit exit /b


:Hide_7
cls
echo You gave up. The End.
set /p answer=Return to start or exit? [start/exit]
if %answer%==start goto Menu
if %answer%==exit exit /b

:Granny_Run_4
cls
echo The wolf faints.
pause
echo You run to help him.
pause
echo He was faking it, and claws you. The End!
set /p answer=Return to start or exit? [start/exit]
if %answer%==start goto Menu
if %answer%==exit exit /b