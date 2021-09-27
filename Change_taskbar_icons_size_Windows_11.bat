@echo off

:: AUTHOR: NOVERRAZ JEREMY
:: Created on: 27th sept, 2021

color 0A

echo *********************************
echo *********************************
echo ***                           ***
echo ***     0 : Small icons       ***
echo ***     1 : Normal icons      ***
echo ***     2 : Big icons         ***
echo ***                           ***
echo ***    Author: J.Noverraz     ***
echo ***  Created on: 2021.09.27   ***
echo ***                           ***
echo *********************************
echo *********************************


FOR /L %%A IN (1,1,5) DO (
  echo.
)


SET /p UserInputNumber="What icons size would you like to apply to your taskbar (0,1,2) ? : "
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V TaskbarSi /T REG_DWORD /D %UserInputNumber% /F

taskkill /f /im explorer.exe
start explorer.exe