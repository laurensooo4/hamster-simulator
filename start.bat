@echo off
REM ===========================================================
REM  Hamster-Simulator - Web-Edition  (Ein-Klick-Start)
REM  Startet einen kleinen Webserver und oeffnet den Browser.
REM  Das schwarze Server-Fenster offen lassen, solange du spielst.
REM  Zum Beenden: dieses Fenster schliessen.
REM ===========================================================
cd /d "%~dp0"
echo Starte Hamster-Simulator auf http://localhost:8765 ...
start "" http://localhost:8765
python -m http.server 8765
