@Echo off
cls

Title Fibonacchi - Demo - www.thebateam.org
Set "Path=%Path%;%cd%;%cd%\files"
Color 0a
Mode 80,25

:Main
Cls
Echo.

Setlocal ENABLEDELAYEDEXPANSION
Echo. Print first 'n' elements of Fibonacchi series...(n=0...44)
echo.&echo.
:a
set /p num=Enter Number of elements : 
if not defined num (goto a)
set a=1
set first=0
set second=1
if %num% leq 0 (goto end)
if %num% geq 1 (echo. %first%)
if %num% geq 2 (echo. %second%)
if %num% leq 2 (goto end)
for /l %%a in (0,1,!num!) do (
	set /a a=!a!+1
	set /a third=!first!+!second!
	echo. !third!
	set first=!second!
	set second=!third!
)
:end
echo. Press any key to Exit...
pause>nul
exit /b
