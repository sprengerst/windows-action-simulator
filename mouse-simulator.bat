echo @off
:bucle
call mouse moveTo 100x100
timeout 5
call mouse moveBy 100x10
goto bucle
pause