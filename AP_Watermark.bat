@echo off
if [%1]==[] goto :eof
:loop
convert -quality 100 -resize "1680>" %1 "%~p1wm_%~n1%~x1"
composite -dissolve 30 -gravity southeast -quality 85 AP_Vid_Watermark.png "%~p1wm_%~n1%~x1" "%~p1wm_%~n1%~x1"
shift
if not [%1]==[] goto loop
