@echo off

set install=true
where java >nul && set install=false

if %install% == true (
    goto :install_java
)
java -version

java -cp %cd%\nlaunch.jar -Dnlaunch.lib=%cd%\nlaunch.dll -Dnlaunch.lars=!%cd%\hello_nl.lar ^
-Djava.system.class.loader=plus.nlaunch.NULaunch ^
plus.hellonl.HelloNlaunch

goto end

:install_java
echo Install java first

goto end
:end
@pause