TITLE Script Loader
:TOP
@CLS
@ECHO OFF
COLOR A

ECHO              ____                               __      
ECHO             /\  _`\                  __        /\ \__   
ECHO             \ \,\L\_\    ___   _ __ /\_\  _____\ \ ,_\  
ECHO              \/_\__ \   /'___\/\`'__\/\ \/\ '__`\ \ \/  
ECHO                /\ \L\ \/\ \__/\ \ \/ \ \ \ \ \L\ \ \ \_ 
ECHO                \ `\____\ \____\\ \_\  \ \_\ \ ,__/\ \__\
ECHO                 \/_____/\/____/ \/_/   \/_/\ \ \/  \/__/
ECHO                                             \ \_\       
ECHO                                              \/_/       
ECHO              __                           __                  
ECHO             /\ \                         /\ \                 
ECHO             \ \ \        ___      __     \_\ \     __   _ __  
ECHO              \ \ \  __  / __`\  /'__`\   /'_` \  /'__`\/\`'__\
ECHO               \ \ \L\ \/\ \L\ \/\ \L\.\_/\ \L\ \/\  __/\ \ \/ 
ECHO                \ \____/\ \____/\ \__/.\_\ \___,_\ \____\\ \_\ 
ECHO                 \/___/  \/___/  \/__/\/_/\/__,_ /\/____/ \/_/ 
ECHO.
rem                ##########################################
rem                ##  Proyecto: Instalador para RyADB     ##
rem                ##        (Codificado por Asfo)         ##
rem                ##         Modificado por Weyne         ##
rem                ##########################################

ECHO Porfavor, inserta tus datos de conexion a la Base de Datos
ECHO.

set /p host= [MySQL] Host (Ejemplo: localhost):
set /p port= [MySQL] Puerto (Ejemplo: 3306): 
set /p user= [MySQL] Usuario: 
set /p pass= [MySQL] Contrasena: 
SET /p world_db= Base de datos World: 
SET /p scriptpath= Carpeta con Scripts: 

SET mysqlpath=.\mySQL

:import
ECHO Actualizando BD...
ECHO.
for %%C in (%scriptpath%\*.sql) do (
   ECHO Importar: %%~nxC
%mysqlpath%\mysql --host=%host% --user=%user% --password=%pass% --port=%port% %world_db% < "%%~fC"
)
ECHO Listo.
ECHO.
ECHO Presiona cualquier tecla para salir.
PAUSE >NUL