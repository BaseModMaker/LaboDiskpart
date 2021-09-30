@echo off

:VarInit
set Chosendisk = 2
set Part1Letter = E
set Part2Letter = F

:Menu

cls

echo.
echo.....................
echo        MENU
echo.....................
echo.
echo 1 - PartDisk
echo 2 - EXIT
echo.

set /p MenuChoice=Type 1 or exit then press ENTER:

if %MenuChoice% == 1 (goto ETIQUETTE1) else (goto Exit)

:ETIQUETTE1

(
	echo select disk %ChosenDisk%
	echo clean

	echo create partition primary size = 2000
	echo select partition 1
	echo assign letter = %Part1Letter%
	echo format fs=ntfs quick

	echo create partition primary
	echo select partition 2
	echo assign letter = %Part2Letter%
	echo format fs=ntfs quick
) | diskpart

pause

goto Menu

:Exit
PAUSE
