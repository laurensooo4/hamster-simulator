@echo off
REM ===========================================================
REM  Hamster-Simulator - Aenderungen online veroeffentlichen
REM  Doppelklick: laedt deine Aenderungen zu GitHub Pages hoch.
REM  Die Live-Seite aktualisiert sich danach in ~1 Minute:
REM  https://laurensooo4.github.io/hamster-simulator/
REM ===========================================================
cd /d "%~dp0"
git add -A
git commit -m "Update Hamster-Simulator"
git push
echo.
echo Fertig. Die Seite ist in ca. 1 Minute aktualisiert.
pause
